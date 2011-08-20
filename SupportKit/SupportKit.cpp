/*
 * Automatically generated file
 */
 
#include "SupportKit.h"
 	
void set_up_debug_sv(const char* name) {
	SV* tie_obj;
	HV* tie_obj_stash;
	
	// create an sv and make it a reference to another (new and empty) sv
	tie_obj = newSV(0);
	newSVrv(tie_obj, NULL);
		
	// bless the reference into the name'd class
	tie_obj_stash = gv_stashpv(name, TRUE);
	sv_bless(tie_obj, tie_obj_stash);
		
	// tie the blessed object to the name'd scalar
	sv_magic(get_sv(name, 1), tie_obj, PERL_MAGIC_tiedscalar, NULL, 0);
}

void debug_me(int level, const char* file, int line, const char* pattern, ...) {
	if (! (debug_level & level))
		return;
	
	va_list args;
	va_start(args, pattern);
	vwarn(pattern, &args);
	va_end(args);
	
	warn("\t...generated by %s line %d\n", file, line);
}

void dump_me(int level, const char* file, int line, SV* arg) {
	if (! (debug_level & level))
		return;
		
	sv_dump(arg);
	warn("...at %s line %d\n", file, line);
}

SV* create_perl_object(void* cpp_obj, const char* perl_class_name, bool must_not_delete) {
	HV* underlying_hash;
	SV* perl_obj;
	HV* perl_obj_stash;
	object_link_data* link = new object_link_data;
	
	if (cpp_obj == NULL)
		return &PL_sv_undef;
		
	// create the underlying hash and make a ref to it
	underlying_hash = newHV();
	perl_obj = newRV_noinc((SV*)underlying_hash);
	//sv_2mortal(perl_obj);
	
	// get the stash and bless the ref (to the underlying hash) into it
	perl_obj_stash = gv_stashpv(perl_class_name, TRUE);
	sv_bless(perl_obj, perl_obj_stash);
	
	// fill in the data fields
	link->cpp_object = cpp_obj;
	link->perl_object = (SV*)underlying_hash;
	link->can_delete_cpp_object = must_not_delete ? false : true;
	link->perl_class_name = perl_class_name;
	
	// link the data via '~' magic
	// (we link to the underlying hash and not to the reference itself)
	sv_magic((SV*)underlying_hash, NULL, PERL_MAGIC_ext, (const char*)link, 0);	// cheat by storing data instead of a string
	
	// check this object
	DUMPME(1,perl_obj);
	
	return perl_obj;
}

object_link_data* get_link_data(SV* perl_obj) {
	SV* underlying_hash;
	MAGIC* mg;

	// get the underlying hash that the perl_obj is a reference to
	// (we can leave it an SV* because we're just using it to find magic)
	underlying_hash = SvRV(perl_obj);
	
	// get the data linked to the underlying hash
	mg = mg_find(underlying_hash, PERL_MAGIC_ext);
	if (mg == NULL)
		return NULL;
	
	// check this object
	DUMPME(1,perl_obj);
	
	return (object_link_data*)mg->mg_ptr;
}

void unlink_perl_object(SV* perl_obj) {
	SV* underlying_hash;
	object_link_data* link;
	
	// get the object linked to the perl_obj
	link = get_link_data(perl_obj);
	
	if (link == NULL)
		return;
	
	// remove the magical link
	underlying_hash = SvRV(perl_obj);
	sv_unmagic((SV*)underlying_hash, PERL_MAGIC_ext);
	
	// this is only ever called from DESTROY, which means
	// refcount should already be 0
	//SvREFCNT_dec(link->perl_object);	// decrement reference count
	link->perl_object = NULL;
	
	if (link->perl_object == NULL && link->cpp_object == NULL)
		delete link;
}

void must_not_delete_cpp_object(SV* perl_obj, bool must_not_delete) {
	object_link_data* link;
	
	// get the object linked to the perl_obj
	link = get_link_data(perl_obj);
	
	if (link == NULL)
		return;
	
	// update the value
	link->can_delete_cpp_object = must_not_delete ? false : true;
}

void* get_cpp_object(SV* perl_obj) {
	object_link_data* link;
	
	// get the object linked to the perl_obj
	link = get_link_data(perl_obj);
	
	if (link == NULL)
		return NULL;
	
	return link->cpp_object;
}

bool can_delete_cpp_object(SV* perl_obj) {
	object_link_data* link;
	
	// get the object linked to the perl_obj
	link = get_link_data(perl_obj);
	
	if (link == NULL)
		return false;
	
	return link->can_delete_cpp_object;
}

void dualize(SV* arg, const char* string) {
	svtype sv_type;
	
	sv_type = SvTYPE(arg);
	switch(sv_type) {
		case SVt_IV:
			SvUPGRADE(arg, SVt_PVIV);
			sv_setpv(arg, string);
			SvIOK_on(arg);
			break;
		
		case SVt_NV:
			SvUPGRADE(arg, SVt_PVNV);
			sv_setpv(arg, string);
			SvNOK_on(arg);
			break;
		
		// how do we do this for blessed refs?
		// this doesn't work
		case SVt_PVMG:
			sv_setpv(arg, string);
			break;
		
		default:
			DEBUGME(2, "Got svtype of %d", sv_type);
	}
}


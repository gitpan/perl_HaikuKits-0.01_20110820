#
# Automatically generated file
#

MODULE = Haiku::InterfaceKit	PACKAGE = Haiku::screen_id

PROTOTYPES: DISABLE

SV*
screen_id::new()
	INIT:
		screen_id* retval;
		SV* retval_sv = newSV(0);	// retcount == 1
	CODE:
		// item 0: CLASS
		
		retval = new screen_id();
		
		retval_sv = create_perl_object((void*)retval, CLASS, false);
		DUMPME(1,retval_sv);
		RETVAL = newSVsv(retval_sv);
		SvREFCNT_dec(retval_sv);
	OUTPUT:
		RETVAL

# Note that this method is not prefixed by the class name.
#
# This is because if we prefix the class name the first argument is
# automatically converted into the THIS pointer, and we no longer have
# access to the Perl object. But we need that access in order to determine
# whether we're allowed to delete the C++ object, and to clean up the Perl
# object.
void
DESTROY(perl_obj)
	INPUT:
		SV* perl_obj;
	INIT:
		screen_id* cpp_obj;
		object_link_data* link;
	CODE:
		DEBUGME(2,"Deleting perl wrapper for screen_id");
		DUMPME(1,perl_obj);
		link = get_link_data(perl_obj);
		if (link != NULL && ! PL_dirty && link->can_delete_cpp_object) {
			DEBUGME(2,"-->Deleting the wrapped c++ object");
			cpp_obj = (screen_id*)link->cpp_object;
			delete cpp_obj;
			link->cpp_object = NULL;
		}
		unlink_perl_object(perl_obj);

MODULE = Haiku::InterfaceKit	PACKAGE = Haiku::screen_id::id

SV*
FETCH(tie_obj)
		SV* tie_obj;
	INIT:
		SV* cpp_obj_sv;
		screen_id* cpp_obj;
	CODE:
		RETVAL = newSV(0);
		cpp_obj_sv = SvRV(tie_obj);
		cpp_obj = (screen_id*)SvIV(cpp_obj_sv);
		sv_setiv(RETVAL, (IV)cpp_obj->id);
	OUTPUT:
		RETVAL

void
STORE(tie_obj, value)
		SV* tie_obj;
		SV* value;
	INIT:
		SV* cpp_obj_sv;
		screen_id* cpp_obj;
	CODE:
		cpp_obj_sv = SvRV(tie_obj);
		cpp_obj = (screen_id*)SvIV(cpp_obj_sv);
		cpp_obj->id = (int32)SvIV(value);

MODULE = Haiku::InterfaceKit	PACKAGE = Haiku::screen_id

# Some structs must be prefaced with the keyword 'struct' or gcc 
# complains. Unfortunately, if you put 'struct' in the XSub def,
# xsubpp can't parse the type, and if you don't, xsubpp complains
# about the non-'struct' version not being in the typemap. So we
# get the THIS variable ourselves in the property XSub instead of
# prefixing the XSub name as 'screen_id::id'

SV*
id(THIS)
	INPUT:
		screen_id* THIS;
	INIT:
		SV* cpp_obj_sv;
		SV* tie_obj;
		HV* tie_obj_stash;
	CODE:
		RETVAL = newSV(0);
		// make our object into an SV* and make a reference to it
		cpp_obj_sv = newSViv((IV)THIS);	// do I need to make this mortal?
		tie_obj = newRV_noinc(cpp_obj_sv);
		
		// bless the reference into the proper class
		tie_obj_stash = gv_stashpv("Haiku::screen_id::id", TRUE);
		sv_bless(tie_obj, tie_obj_stash);
		
		// tie the blessed object to the RETVAL scalar
		sv_magic(RETVAL, tie_obj, PERL_MAGIC_tiedscalar, NULL, 0);
	OUTPUT:
		RETVAL

BOOT:
	CvFLAGS(get_cv("Haiku::screen_id::id", TRUE)) |= CVf_LVALUE;

bool
screen_id::operator_eq(object, swap)
	INPUT:
		screen_id* object;
		IV swap;
	OVERLOAD: ==
	CODE:
		RETVAL = THIS == object;
	OUTPUT:
		RETVAL

bool
screen_id::operator_ne(object, swap)
	INPUT:
		screen_id* object;
		IV swap;
	OVERLOAD: !=
	CODE:
		RETVAL = THIS != object;
	OUTPUT:
		RETVAL

# xsubpp only enables overloaded operators for the initial module; additional
# modules are out of luck unless they roll their own, so that's what we do
# (XS_Haiku__InterfaceKit_nil defined automatically by xsubpp)
BOOT:
	sv_setsv(
		get_sv("Haiku::screen_id::()", TRUE),
		&PL_sv_yes	// so we don't get fallback errors
	);
    newXS("Haiku::screen_id::()", XS_Haiku__InterfaceKit_nil, file);


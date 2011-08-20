/*
 * Automatically generated file
 */
 
#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#ifdef __cplusplus
}
#endif

#undef Copy // this macro might interfere with function names

#include "ApplicationKit.cpp"
#include "ext/Haiku/CustomApplication.cpp"

MODULE = Haiku::ApplicationKit	PACKAGE = Haiku::ApplicationKit

INCLUDE: ext/Haiku/Handler.xs
INCLUDE: ext/Haiku/Looper.xs
INCLUDE: ext/Haiku/Application.xs
INCLUDE: ext/Haiku/CustomApplication.xs
INCLUDE: ext/Haiku/Clipboard.xs
INCLUDE: ext/Haiku/Cursor.xs
INCLUDE: ext/Haiku/Invoker.xs
INCLUDE: ext/Haiku/Message.xs
INCLUDE: ext/Haiku/Messenger.xs

# since the XS included above probably changed it, force correct module
MODULE = Haiku::ApplicationKit	PACKAGE = Haiku::ApplicationKit

SV*
B_CURSOR_SYSTEM_DEFAULT()
	CODE:
		RETVAL = newSV(0);
		sv_setsv(RETVAL, create_perl_object((void*)B_CURSOR_SYSTEM_DEFAULT, "Haiku::Cursor", true));
		dualize(RETVAL, "B_CURSOR_SYSTEM_DEFAULT");
	OUTPUT:
		RETVAL

SV*
B_CURSOR_I_BEAM()
	CODE:
		RETVAL = newSV(0);
		sv_setsv(RETVAL, create_perl_object((void*)B_CURSOR_I_BEAM, "Haiku::Cursor", true));
		dualize(RETVAL, "B_CURSOR_I_BEAM");
	OUTPUT:
		RETVAL

SV*
B_ABOUT_REQUESTED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_ABOUT_REQUESTED);
		dualize(RETVAL, "B_ABOUT_REQUESTED");
	OUTPUT:
		RETVAL

SV*
B_WINDOW_ACTIVATED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_WINDOW_ACTIVATED);
		dualize(RETVAL, "B_WINDOW_ACTIVATED");
	OUTPUT:
		RETVAL

SV*
B_APP_ACTIVATED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_APP_ACTIVATED);
		dualize(RETVAL, "B_APP_ACTIVATED");
	OUTPUT:
		RETVAL

SV*
B_ARGV_RECEIVED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_ARGV_RECEIVED);
		dualize(RETVAL, "B_ARGV_RECEIVED");
	OUTPUT:
		RETVAL

SV*
B_QUIT_REQUESTED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_QUIT_REQUESTED);
		dualize(RETVAL, "B_QUIT_REQUESTED");
	OUTPUT:
		RETVAL

SV*
B_CLOSE_REQUESTED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_CLOSE_REQUESTED);
		dualize(RETVAL, "B_CLOSE_REQUESTED");
	OUTPUT:
		RETVAL

SV*
B_CANCEL()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_CANCEL);
		dualize(RETVAL, "B_CANCEL");
	OUTPUT:
		RETVAL

SV*
B_INVALIDATE()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_INVALIDATE);
		dualize(RETVAL, "B_INVALIDATE");
	OUTPUT:
		RETVAL

SV*
B_KEY_DOWN()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_KEY_DOWN);
		dualize(RETVAL, "B_KEY_DOWN");
	OUTPUT:
		RETVAL

SV*
B_KEY_UP()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_KEY_UP);
		dualize(RETVAL, "B_KEY_UP");
	OUTPUT:
		RETVAL

SV*
B_UNMAPPED_KEY_DOWN()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_UNMAPPED_KEY_DOWN);
		dualize(RETVAL, "B_UNMAPPED_KEY_DOWN");
	OUTPUT:
		RETVAL

SV*
B_UNMAPPED_KEY_UP()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_UNMAPPED_KEY_UP);
		dualize(RETVAL, "B_UNMAPPED_KEY_UP");
	OUTPUT:
		RETVAL

SV*
B_LAYOUT_WINDOW()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_LAYOUT_WINDOW);
		dualize(RETVAL, "B_LAYOUT_WINDOW");
	OUTPUT:
		RETVAL

SV*
B_MODIFIERS_CHANGED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_MODIFIERS_CHANGED);
		dualize(RETVAL, "B_MODIFIERS_CHANGED");
	OUTPUT:
		RETVAL

SV*
B_MINIMIZE()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_MINIMIZE);
		dualize(RETVAL, "B_MINIMIZE");
	OUTPUT:
		RETVAL

SV*
B_MOUSE_DOWN()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_MOUSE_DOWN);
		dualize(RETVAL, "B_MOUSE_DOWN");
	OUTPUT:
		RETVAL

SV*
B_MOUSE_MOVED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_MOUSE_MOVED);
		dualize(RETVAL, "B_MOUSE_MOVED");
	OUTPUT:
		RETVAL

SV*
B_MOUSE_ENTER_EXIT()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_MOUSE_ENTER_EXIT);
		dualize(RETVAL, "B_MOUSE_ENTER_EXIT");
	OUTPUT:
		RETVAL

SV*
B_MOUSE_IDLE()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_MOUSE_IDLE);
		dualize(RETVAL, "B_MOUSE_IDLE");
	OUTPUT:
		RETVAL

SV*
B_MOUSE_UP()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_MOUSE_UP);
		dualize(RETVAL, "B_MOUSE_UP");
	OUTPUT:
		RETVAL

SV*
B_MOUSE_WHEEL_CHANGED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_MOUSE_WHEEL_CHANGED);
		dualize(RETVAL, "B_MOUSE_WHEEL_CHANGED");
	OUTPUT:
		RETVAL

SV*
B_OPEN_IN_WORKSPACE()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_OPEN_IN_WORKSPACE);
		dualize(RETVAL, "B_OPEN_IN_WORKSPACE");
	OUTPUT:
		RETVAL

SV*
B_PRINTER_CHANGED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_PRINTER_CHANGED);
		dualize(RETVAL, "B_PRINTER_CHANGED");
	OUTPUT:
		RETVAL

SV*
B_PULSE()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_PULSE);
		dualize(RETVAL, "B_PULSE");
	OUTPUT:
		RETVAL

SV*
B_READY_TO_RUN()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_READY_TO_RUN);
		dualize(RETVAL, "B_READY_TO_RUN");
	OUTPUT:
		RETVAL

SV*
B_REFS_RECEIVED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_REFS_RECEIVED);
		dualize(RETVAL, "B_REFS_RECEIVED");
	OUTPUT:
		RETVAL

SV*
B_RELEASE_OVERLAY_LOCK()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_RELEASE_OVERLAY_LOCK);
		dualize(RETVAL, "B_RELEASE_OVERLAY_LOCK");
	OUTPUT:
		RETVAL

SV*
B_ACQUIRE_OVERLAY_LOCK()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_ACQUIRE_OVERLAY_LOCK);
		dualize(RETVAL, "B_ACQUIRE_OVERLAY_LOCK");
	OUTPUT:
		RETVAL

SV*
B_SCREEN_CHANGED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_SCREEN_CHANGED);
		dualize(RETVAL, "B_SCREEN_CHANGED");
	OUTPUT:
		RETVAL

SV*
B_VALUE_CHANGED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_VALUE_CHANGED);
		dualize(RETVAL, "B_VALUE_CHANGED");
	OUTPUT:
		RETVAL

SV*
B_TRANSLATOR_ADDED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_TRANSLATOR_ADDED);
		dualize(RETVAL, "B_TRANSLATOR_ADDED");
	OUTPUT:
		RETVAL

SV*
B_TRANSLATOR_REMOVED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_TRANSLATOR_REMOVED);
		dualize(RETVAL, "B_TRANSLATOR_REMOVED");
	OUTPUT:
		RETVAL

SV*
B_VIEW_MOVED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_VIEW_MOVED);
		dualize(RETVAL, "B_VIEW_MOVED");
	OUTPUT:
		RETVAL

SV*
B_VIEW_RESIZED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_VIEW_RESIZED);
		dualize(RETVAL, "B_VIEW_RESIZED");
	OUTPUT:
		RETVAL

SV*
B_WINDOW_MOVED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_WINDOW_MOVED);
		dualize(RETVAL, "B_WINDOW_MOVED");
	OUTPUT:
		RETVAL

SV*
B_WINDOW_RESIZED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_WINDOW_RESIZED);
		dualize(RETVAL, "B_WINDOW_RESIZED");
	OUTPUT:
		RETVAL

SV*
B_WORKSPACES_CHANGED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_WORKSPACES_CHANGED);
		dualize(RETVAL, "B_WORKSPACES_CHANGED");
	OUTPUT:
		RETVAL

SV*
B_WORKSPACE_ACTIVATED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_WORKSPACE_ACTIVATED);
		dualize(RETVAL, "B_WORKSPACE_ACTIVATED");
	OUTPUT:
		RETVAL

SV*
B_ZOOM()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_ZOOM);
		dualize(RETVAL, "B_ZOOM");
	OUTPUT:
		RETVAL

SV*
_COLORS_UPDATED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_COLORS_UPDATED);
		dualize(RETVAL, "_COLORS_UPDATED");
	OUTPUT:
		RETVAL

SV*
_FONTS_UPDATED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_FONTS_UPDATED);
		dualize(RETVAL, "_FONTS_UPDATED");
	OUTPUT:
		RETVAL

SV*
_APP_MENU_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_APP_MENU_);
		dualize(RETVAL, "_APP_MENU_");
	OUTPUT:
		RETVAL

SV*
_BROWSER_MENUS_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_BROWSER_MENUS_);
		dualize(RETVAL, "_BROWSER_MENUS_");
	OUTPUT:
		RETVAL

SV*
_MENU_EVENT_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_MENU_EVENT_);
		dualize(RETVAL, "_MENU_EVENT_");
	OUTPUT:
		RETVAL

SV*
_PING_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_PING_);
		dualize(RETVAL, "_PING_");
	OUTPUT:
		RETVAL

SV*
_QUIT_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_QUIT_);
		dualize(RETVAL, "_QUIT_");
	OUTPUT:
		RETVAL

SV*
_VOLUME_MOUNTED_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_VOLUME_MOUNTED_);
		dualize(RETVAL, "_VOLUME_MOUNTED_");
	OUTPUT:
		RETVAL

SV*
_VOLUME_UNMOUNTED_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_VOLUME_UNMOUNTED_);
		dualize(RETVAL, "_VOLUME_UNMOUNTED_");
	OUTPUT:
		RETVAL

SV*
_MESSAGE_DROPPED_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_MESSAGE_DROPPED_);
		dualize(RETVAL, "_MESSAGE_DROPPED_");
	OUTPUT:
		RETVAL

SV*
_DISPOSE_DRAG_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_DISPOSE_DRAG_);
		dualize(RETVAL, "_DISPOSE_DRAG_");
	OUTPUT:
		RETVAL

SV*
_MENUS_DONE_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_MENUS_DONE_);
		dualize(RETVAL, "_MENUS_DONE_");
	OUTPUT:
		RETVAL

SV*
_SHOW_DRAG_HANDLES_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_SHOW_DRAG_HANDLES_);
		dualize(RETVAL, "_SHOW_DRAG_HANDLES_");
	OUTPUT:
		RETVAL

SV*
_EVENTS_PENDING_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_EVENTS_PENDING_);
		dualize(RETVAL, "_EVENTS_PENDING_");
	OUTPUT:
		RETVAL

SV*
_UPDATE_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_UPDATE_);
		dualize(RETVAL, "_UPDATE_");
	OUTPUT:
		RETVAL

SV*
_UPDATE_IF_NEEDED_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_UPDATE_IF_NEEDED_);
		dualize(RETVAL, "_UPDATE_IF_NEEDED_");
	OUTPUT:
		RETVAL

SV*
_PRINTER_INFO_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_PRINTER_INFO_);
		dualize(RETVAL, "_PRINTER_INFO_");
	OUTPUT:
		RETVAL

SV*
_SETUP_PRINTER_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_SETUP_PRINTER_);
		dualize(RETVAL, "_SETUP_PRINTER_");
	OUTPUT:
		RETVAL

SV*
_SELECT_PRINTER_()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)_SELECT_PRINTER_);
		dualize(RETVAL, "_SELECT_PRINTER_");
	OUTPUT:
		RETVAL

SV*
B_SET_PROPERTY()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_SET_PROPERTY);
		dualize(RETVAL, "B_SET_PROPERTY");
	OUTPUT:
		RETVAL

SV*
B_GET_PROPERTY()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_GET_PROPERTY);
		dualize(RETVAL, "B_GET_PROPERTY");
	OUTPUT:
		RETVAL

SV*
B_CREATE_PROPERTY()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_CREATE_PROPERTY);
		dualize(RETVAL, "B_CREATE_PROPERTY");
	OUTPUT:
		RETVAL

SV*
B_DELETE_PROPERTY()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_DELETE_PROPERTY);
		dualize(RETVAL, "B_DELETE_PROPERTY");
	OUTPUT:
		RETVAL

SV*
B_COUNT_PROPERTIES()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_COUNT_PROPERTIES);
		dualize(RETVAL, "B_COUNT_PROPERTIES");
	OUTPUT:
		RETVAL

SV*
B_EXECUTE_PROPERTY()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_EXECUTE_PROPERTY);
		dualize(RETVAL, "B_EXECUTE_PROPERTY");
	OUTPUT:
		RETVAL

SV*
B_GET_SUPPORTED_SUITES()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_GET_SUPPORTED_SUITES);
		dualize(RETVAL, "B_GET_SUPPORTED_SUITES");
	OUTPUT:
		RETVAL

SV*
B_UNDO()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_UNDO);
		dualize(RETVAL, "B_UNDO");
	OUTPUT:
		RETVAL

SV*
B_REDO()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_REDO);
		dualize(RETVAL, "B_REDO");
	OUTPUT:
		RETVAL

SV*
B_CUT()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_CUT);
		dualize(RETVAL, "B_CUT");
	OUTPUT:
		RETVAL

SV*
B_COPY()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_COPY);
		dualize(RETVAL, "B_COPY");
	OUTPUT:
		RETVAL

SV*
B_PASTE()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_PASTE);
		dualize(RETVAL, "B_PASTE");
	OUTPUT:
		RETVAL

SV*
B_SELECT_ALL()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_SELECT_ALL);
		dualize(RETVAL, "B_SELECT_ALL");
	OUTPUT:
		RETVAL

SV*
B_SAVE_REQUESTED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_SAVE_REQUESTED);
		dualize(RETVAL, "B_SAVE_REQUESTED");
	OUTPUT:
		RETVAL

SV*
B_MESSAGE_NOT_UNDERSTOOD()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_MESSAGE_NOT_UNDERSTOOD);
		dualize(RETVAL, "B_MESSAGE_NOT_UNDERSTOOD");
	OUTPUT:
		RETVAL

SV*
B_NO_REPLY()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_NO_REPLY);
		dualize(RETVAL, "B_NO_REPLY");
	OUTPUT:
		RETVAL

SV*
B_REPLY()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_REPLY);
		dualize(RETVAL, "B_REPLY");
	OUTPUT:
		RETVAL

SV*
B_SIMPLE_DATA()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_SIMPLE_DATA);
		dualize(RETVAL, "B_SIMPLE_DATA");
	OUTPUT:
		RETVAL

SV*
B_MIME_DATA()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_MIME_DATA);
		dualize(RETVAL, "B_MIME_DATA");
	OUTPUT:
		RETVAL

SV*
B_ARCHIVED_OBJECT()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_ARCHIVED_OBJECT);
		dualize(RETVAL, "B_ARCHIVED_OBJECT");
	OUTPUT:
		RETVAL

SV*
B_UPDATE_STATUS_BAR()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_UPDATE_STATUS_BAR);
		dualize(RETVAL, "B_UPDATE_STATUS_BAR");
	OUTPUT:
		RETVAL

SV*
B_RESET_STATUS_BAR()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_RESET_STATUS_BAR);
		dualize(RETVAL, "B_RESET_STATUS_BAR");
	OUTPUT:
		RETVAL

SV*
B_NODE_MONITOR()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_NODE_MONITOR);
		dualize(RETVAL, "B_NODE_MONITOR");
	OUTPUT:
		RETVAL

SV*
B_QUERY_UPDATE()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_QUERY_UPDATE);
		dualize(RETVAL, "B_QUERY_UPDATE");
	OUTPUT:
		RETVAL

SV*
B_ENDORSABLE()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_ENDORSABLE);
		dualize(RETVAL, "B_ENDORSABLE");
	OUTPUT:
		RETVAL

SV*
B_COPY_TARGET()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_COPY_TARGET);
		dualize(RETVAL, "B_COPY_TARGET");
	OUTPUT:
		RETVAL

SV*
B_MOVE_TARGET()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_MOVE_TARGET);
		dualize(RETVAL, "B_MOVE_TARGET");
	OUTPUT:
		RETVAL

SV*
B_TRASH_TARGET()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_TRASH_TARGET);
		dualize(RETVAL, "B_TRASH_TARGET");
	OUTPUT:
		RETVAL

SV*
B_LINK_TARGET()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_LINK_TARGET);
		dualize(RETVAL, "B_LINK_TARGET");
	OUTPUT:
		RETVAL

SV*
B_INPUT_DEVICES_CHANGED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_INPUT_DEVICES_CHANGED);
		dualize(RETVAL, "B_INPUT_DEVICES_CHANGED");
	OUTPUT:
		RETVAL

SV*
B_INPUT_METHOD_EVENT()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_INPUT_METHOD_EVENT);
		dualize(RETVAL, "B_INPUT_METHOD_EVENT");
	OUTPUT:
		RETVAL

SV*
B_WINDOW_MOVE_TO()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_WINDOW_MOVE_TO);
		dualize(RETVAL, "B_WINDOW_MOVE_TO");
	OUTPUT:
		RETVAL

SV*
B_WINDOW_MOVE_BY()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_WINDOW_MOVE_BY);
		dualize(RETVAL, "B_WINDOW_MOVE_BY");
	OUTPUT:
		RETVAL

SV*
B_SILENT_RELAUNCH()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_SILENT_RELAUNCH);
		dualize(RETVAL, "B_SILENT_RELAUNCH");
	OUTPUT:
		RETVAL

SV*
B_OBSERVER_NOTICE_CHANGE()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_OBSERVER_NOTICE_CHANGE);
		dualize(RETVAL, "B_OBSERVER_NOTICE_CHANGE");
	OUTPUT:
		RETVAL

SV*
B_CONTROL_INVOKED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_CONTROL_INVOKED);
		dualize(RETVAL, "B_CONTROL_INVOKED");
	OUTPUT:
		RETVAL

SV*
B_CONTROL_MODIFIED()
	CODE:
		RETVAL = newSV(0);
		sv_setiv(RETVAL, (IV)B_CONTROL_MODIFIED);
		dualize(RETVAL, "B_CONTROL_MODIFIED");
	OUTPUT:
		RETVAL

MODULE = Haiku::ApplicationKit	PACKAGE = Haiku::ApplicationKit::DEBUG

SV*
FETCH(tie_obj)
		SV* tie_obj;
	CODE:
		RETVAL = newSViv(debug_level);
	OUTPUT:
		RETVAL

void
STORE(tie_obj, value)
		SV* tie_obj;
		SV* value;
	CODE:
		debug_level = SvIV(value);
		
MODULE = Haiku::ApplicationKit	PACKAGE = Haiku::ApplicationKit

BOOT:
	set_up_debug_sv("Haiku::ApplicationKit::DEBUG");

#pragma rtGlobals=1		// Use modern global access method.

// This file, along with the "My Package.ipf" file, illustrates how to load and unload
// Igor procedure packages. This is the technique used to load WaveMetrics packages.
// The WaveMetrics package loader is named WMMenus.ipf.

// Put this file or an alias or shortcut pointing to it in your Igor Procedures folder.
// Put the "My Package.ipf" file or an alias or shortcut pointing to it in your User Procedures folder.

// To load the package, choose Macros->Load My Package. This loads "My Package.ipf".
// Next choose DoSomethingUseful which calls a routine in "My Package.ipf".
// Next choose Macros->Unload My Package. This unload "My Package.ipf".

// This file can define any number of menu items, each of which can load a different package that you have created.

Menu "BESSRC"
	"Load BESSRC Acq",/Q,Execute/P/Q/Z "INSERTINCLUDE \"BESSRCmenu\"";Execute/P/Q/Z "COMPILEPROCEDURES "
End

Menu "BESSRC"
	"Load GISAXS",/Q,Execute/P/Q/Z "INSERTINCLUDE \"GISAXSinitialize\"";Execute/P/Q/Z "COMPILEPROCEDURES "
End

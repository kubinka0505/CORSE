: Drag registry extensions files and drop them on this file to register or unregister them.

@echo off
set __COMPAT_LAYER=RunAsInvoker
for %%P in (%*) do (
	echo Installing...
	start "" "%%P"
	timeout 1 > NUL
)

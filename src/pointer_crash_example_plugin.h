#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

#if _WIN32
#define FFI_PLUGIN_EXPORT __declspec(dllexport)
#else
#define FFI_PLUGIN_EXPORT
#endif


FFI_PLUGIN_EXPORT int subtract(int *a, int b);

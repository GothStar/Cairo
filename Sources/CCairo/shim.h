#if defined(__APPLE__)
#include "/usr/local/include/cairo/cairo.h"
#include "/usr/local/include/cairo/cairo-pdf.h"
#include "/usr/local/include/cairo/cairo-svg.h"
#include "/usr/local/include/cairo/cairo-ft.h"
#include "/usr/local/include/cairo/cairo-quartz.h"
#else
#include <cairo.h>
#include <cairo-pdf.h>
#include <cairo-svg.h>
#include <cairo-ft.h>
#endif

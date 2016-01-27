#Customisable stuff here
COMPILER = gcc

LIBPURPLE_CFLAGS = -I/usr/include/libpurple -I/usr/local/include/libpurple
GLIB_CFLAGS = -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include -I/usr/include -I/usr/local/include/glib-2.0 -I/usr/local/lib/glib-2.0/include -I/usr/local/include

SOURCES = \
	capsnot.c
	
#Standard stuff here
.PHONY:	all clean sourcepackage

all:	capsnot.so

clean:
	rm -f capsnot.so

capsnot.so:	${SOURCES}
	${COMPILER} ${LIBPURPLE_CFLAGS} -Wall ${GLIB_CFLAGS} -I. -g -O2 -pipe ${SOURCES} -o $@ -shared -fPIC -DPIC

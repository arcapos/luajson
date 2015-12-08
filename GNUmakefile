SRCS=		luajson.c
LIB=		json
 
CFLAGS+=	-O3 -Wall -fPIC -I/usr/include -I/usr/include/lua5.1 \
		-D_GNU_SOURCE
LDADD+=		-L/usr/lib

LIBDIR=		/usr/local/share/lua/5.1

${LIB}.so:	${SRCS:.c=.o}
		cc -shared -o ${LIB}.so ${CFLAGS} ${SRCS:.c=.o} ${LDADD}

clean:
		rm -f *.o *.so
install:
	install -d ${LIBDIR}
	install ${LIB}.so ${LIBDIR}


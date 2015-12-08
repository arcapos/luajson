SRCS=		luajson.c
LIB=		json

OS!=		uname
LUA_VERSION?=	5.2

.if ${OS} == "NetBSD"
LOCALBASE?=	/usr/pkg
LDADD+=		-R/usr/lib -R${LOCALBASE}/lib
.else
LOCALBASE=	/usr/local
.endif

NOLINT=	1
CFLAGS+=	-I${LOCALBASE}/include
LDADD+=		-L${XDIR}/lib -L${LOCALBASE}/lib

LIBDIR=		${LOCALBASE}/lib/lua/${LUA_VERSION}

libinstall:

install:
	${INSTALL} -d ${DESTDIR}${LIBDIR}
	${INSTALL} lib${LIB}.so ${DESTDIR}${LIBDIR}/${LIB}.so

.include <bsd.lib.mk>

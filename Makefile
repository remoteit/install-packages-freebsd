# $FreeBSD$

PORTNAME=		remoteit-cli
PORTVERSION=	1.2.6
CATEGORIES=		net
MASTER_SITES=	https://github.com/remoteit/cli/releases/download/v1.2.6/remoteit_linux_x86_64:source1
DISTFILES=		remoteit_linux_x86_64:source1
# USE_GITHUB=		yes
# GH_ACCOUNT=		remoteit
# GH_TAGNAME=		1.2.6
DISTNAME=		remoteit

MAINTAINER=		nicolae@remote.it
COMMENT=		Connect to and from your other devices

LICENSE=		MIT

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}/${PREFIX}/bin

.include <bsd.port.mk>
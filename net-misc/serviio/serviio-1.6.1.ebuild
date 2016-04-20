# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="6"

inherit user

DESCRIPTION="Serviio is a free media server"
HOMEPAGE="http://www.serviio.org/"
SRC_URI="http://download.serviio.org/releases/${P}-linux.tar.gz"
LICENSE="Serviio"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RDEPEND="
	media-video/ffmpeg[encode,librtmp,libass,x264,mp3,fontconfig,truetype,speex,vorbis,threads]
	>=virtual/jre-1.8
	media-gfx/dcraw
"

pkg_setup()
{
	enewuser serviio

}

src_install()
{
	doinitd "${FILESDIR}/serviio" || die "Install failed!"
	dodir "/opt" || die "Install failed!"
	cp -R "${S}" "${D}/opt/serviio" || die "Install failed!"
	chown -R serviio:serviio "${D}/opt/serviio/" || die "Install failed!"
}


# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="A client for signing certificates with an ACME-server"
HOMEPAGE="https://github.com/lukas2511/letsencrypt.sh"

LICENSE="MIT"
SLOT="0"

MY_PN="letsencrypt.sh"

EGIT_REPO_URI="git://github.com/lukas2511/${MY_PN}.git"
EGIT_COMMIT="v${PV}"
KEYWORDS="~amd64"

RDEPEND="
	app-shells/bash
	dev-libs/openssl
	net-misc/curl
	sys-apps/sed
	sys-apps/grep
	sys-apps/coreutils
	"
DEPEND=${RDEPEND}

src_install() {
	dodoc CHANGELOG README.md config.sh.example domains.txt.example hook.sh.example
	dobin letsencrypt.sh
}


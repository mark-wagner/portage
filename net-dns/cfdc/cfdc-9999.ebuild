# Copyright 1999-2015 Mark Wagner
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="CloudFlare Dynamic DNS client"
HOMEPAGE="https://github.com/mark-wagner/cfdc"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

EGIT_REPO_URI="git://github.com/mark-wagner/${PN}.git"

if [ ${PV} == "9999" ] ; then
	KEYWORDS=""
else
	EGIT_COMMIT="${PV}"
fi

RDEPEND="
	dev-lang/python
	dev-python/requests
	sys-apps/openrc
	"
DEPEND=${RDEPEND}

src_install() {
	dodoc README.md LICENSE cfdc.conf.example
	dobin cfdc
	newconfd cfdc.conf.d cfdc
	newinitd cfdc.init cfdc
	keepdir /var/log/cfdc
	chown nobody:nobody ${D}/var/log/cfdc
	insinto /etc/logrotate.d/
	newins cfdc.logrotate cfdc
	insinto /etc/tmpfiles.d/
	newins cfdc.tmpfiles.d cfdc.conf
}


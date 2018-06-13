# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit systemd

DESCRIPTION="Splunk universal forwarder"
HOMEPAGE="http://docs.splunk.com/Documentation/Forwarder/7.1.1/Forwarder/Abouttheuniversalforwarder"
COMMIT="8f0ead9ec3db"
MY_PN="${PN/-bin/}"
MY_PV="${PV}-${COMMIT}"
MY_P="${MY_PN}-${MY_PV}"
SRC_URI="${MY_P}-Linux-x86_64.tgz"

LICENSE="Splunk-EULA"
SLOT="0"
KEYWORDS="-* ~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

S="${WORKDIR}"

RESTRICT="fetch"

QA_PREBUILT="*"

src_install() {
	mkdir "${D}"/opt || die
	cp -a "${MY_PN}" "${D}"/opt/"${MY_PN}" || die

	dosym /opt/"${MY_PN}"/etc /etc/"${MY_PN}"
    dosym /opt/"${MY_PN}"/var/log/splunk /var/log/"${MY_PN}"
    dosym /opt/"${MY_PN}"/var/run/splunk /var/run/"${MY_PN}"
    dosym /opt/"${MY_PN}"/var/spool/splunk /var/spool/"${MY_PN}"

	dosym /opt/"${MY_PN}"/bin/splunk /usr/bin/splunk

	newinitd "${FILESDIR}"/"${MY_PN}".initd "${MY_PN}"
	systemd_newunit "${FILESDIR}"/"${MY_PN}".service "${MY_PN}".service
}

pkg_postinst() {
	einfo "You must run Splunk manually the first time"
	einfo "to accept the license and change the admin"
	einfo "password by using 'splunk start'."
}

pkg_nofetch() {
   einfo "Please download ${SRC_URI} and move it to"
    einfo "${DISTDIR}:"
    einfo
    einfo "  https://www.splunk.com/en_us/download/universal-forwarder.html"
}

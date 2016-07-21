# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.9

EAPI=5

MODULE_AUTHOR="PWR"
MODULE_VERSION="0.55.4"

MODULE_A="${PN}-v${PV}.tar.gz"

inherit perl-module

S="${WORKDIR}/${PN}-v${PV}"

DESCRIPTION="Object Orientated Interface to CloudFlare client API"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="perl-gcpan/Test-CPAN-Meta-JSON
	dev-perl/JSON-Any
	dev-perl/indirect
	dev-perl/Test-Exception
	dev-perl/IPC-System-Simple
	dev-perl/MooseX-StrictConstructor
	dev-perl/Type-Tiny
	dev-perl/Moose
	dev-perl/namespace-autoclean
	>=dev-perl/libwww-perl-6.150.0
	dev-perl/JSON-MaybeXS
	perl-gcpan/Test-LWP-UserAgent
	dev-perl/Throwable
	>=dev-perl/LWP-Protocol-https-6.60.0
	dev-perl/Readonly
	dev-perl/Test-RequiresInternet
	dev-perl/HTTP-Message
	perl-gcpan/Kavorka
	dev-perl/Try-Tiny
	dev-lang/perl"

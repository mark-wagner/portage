# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.9

EAPI=5

MODULE_AUTHOR="PWR"
MODULE_VERSION="0.63.1"

MODULE_A="${PN}-v${PV}.tar.gz"

inherit perl-module

S="${WORKDIR}/${PN}-v${PV}"

DESCRIPTION="CloudFlare Dynamic DNS"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-perl/Try-Tiny
	perl-gcpan/CloudFlare-Client
	dev-perl/namespace-autoclean
	dev-perl/Modern-Perl
	dev-perl/Type-Tiny
	dev-perl/MooseX-StrictConstructor
	dev-perl/Readonly
	dev-perl/Test-Exception
	dev-perl/Moose
	dev-perl/IPC-System-Simple
	dev-perl/indirect
	perl-gcpan/TryCatch
	perl-gcpan/Test-CPAN-Meta-JSON
	dev-lang/perl"

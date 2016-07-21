# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.9

EAPI=5

MODULE_AUTHOR="TOBYINK"
MODULE_VERSION="0.036"


inherit perl-module

DESCRIPTION="function signatures with the lure of the animal"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=perl-gcpan/Parse-Keyword-0.08
	dev-perl/Module-Runtime
	dev-perl/Type-Tiny
	perl-gcpan/Data-Alias
	>=dev-perl/Exporter-Tiny-0.42.0
	perl-gcpan/match-simple
	dev-perl/Moo
	>=perl-gcpan/Return-Type-0.005
	dev-perl/Test-Fatal
	>=dev-perl/Type-Tiny-XS-0.12.0
	dev-perl/Test-Requires
	dev-perl/PadWalker
	>=perl-gcpan/namespace-sweep-0.006
	dev-lang/perl"

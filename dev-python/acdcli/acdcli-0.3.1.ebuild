# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python3_{2,3,4,5} )

inherit distutils-r1

DESCRIPTION="A command line and FUSE interface to Amazon Cloud Drive"
HOMEPAGE="https://github.com/yadayada/acd_cli https://pypi.python.org/pypi/acdcli"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

IUSE="fuse"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/appdirs[${PYTHON_USEDEP}]
	dev-python/colorama[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
	dev-python/sqlalchemy[${PYTHON_USEDEP}]
	fuse? ( >=sys-fs/fuse-2.6 )
	"
DEPEND=${RDEPEND}

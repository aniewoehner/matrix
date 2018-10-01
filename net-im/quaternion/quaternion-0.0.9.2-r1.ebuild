# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="An IM client for the Matrix protocol"
HOMEPAGE="https://github.com/qmatrixclient/quaternion"

inherit eutils cmake-utils

if [[ ${PV} == "9999" ]]; then
	inherit git-r3

	SRC_URI=""
	EGIT_REPO_URI="https://github.com/qmatrixclient/${PN}.git"
	#EGIT_SUBMODULES=()
else
	inherit git-r3

	SRC_URI=""
	EGIT_REPO_URI="https://github.com/qmatrixclient/${PN}.git"
	EGIT_COMMIT="v${PV}"
	
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND=">=dev-qt/qtgui-5.6.2
		>=dev-qt/qtdeclarative-5.6.2
		dev-qt/qtquickcontrols2
		!dev-libs/libqmatrixclient"
RDEPEND="${DEPEND}"

src_prepare() {
	cmake-utils_src_prepare
}

src_configure() {
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_make
}

src_install() {
	cmake-utils_src_install
}
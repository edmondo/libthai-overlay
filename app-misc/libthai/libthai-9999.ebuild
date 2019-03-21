# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit git-r3

DESCRIPTION="Thai language support routines"
HOMEPAGE="https://linux.thai.net/projects/libthai/"

EGIT_REPO_URI="https://github.com/tlwg/libthai.git"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="app-misc/libdatrie"

src_prepare() {
	default

	./autogen.sh || die
}

src_configure() {
    local myeconfargs=(
		--disable-dict
    )
	econf "${myeconfargs[@]}"
}

src_test() {
	emake check test
}

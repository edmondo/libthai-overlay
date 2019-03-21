# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit git-r3

DESCRIPTION="Double-Array Trie Library"
HOMEPAGE="https://github.com/tlwg/libdatrie"

EGIT_REPO_URI="https://github.com/tlwg/libdatrie.git"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_prepare() {
	default

	./autogen.sh || die
}

src_configure() {
	econf "${myeconfargs[@]}"
}

src_test() {
	emake check test
}

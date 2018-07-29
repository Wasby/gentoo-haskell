# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A library for creating kernels for IPython frontends"
HOMEPAGE="https://github.com/gibiansky/IHaskell"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/cereal:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	dev-haskell/memory:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/uuid:=[profile?]
	dev-haskell/zeromq4-haskell:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	examples? ( dev-haskell/parsec:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples examples)
}

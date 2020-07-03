# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Existential type: Some"
HOMEPAGE="https://github.com/phadej/some"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+newtype-unsafe"

RDEPEND=">=dev-haskell/semigroups-0.18.5:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/transformers-compat-0.6:=[profile?] <dev-haskell/transformers-compat-0.7:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag newtype-unsafe newtype-unsafe)
}

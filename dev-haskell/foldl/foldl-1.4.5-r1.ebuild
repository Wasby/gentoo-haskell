# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Composable, streaming, and efficient left folds"
HOMEPAGE="http://hackage.haskell.org/package/foldl"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/comonad-4.0:=[profile?] <dev-haskell/comonad-6:=[profile?]
	<dev-haskell/contravariant-1.6:=[profile?]
	<dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/mwc-random-0.13.1.0:=[profile?] <dev-haskell/mwc-random-0.15:=[profile?]
	<dev-haskell/primitive-0.8:=[profile?]
	<dev-haskell/profunctors-5.6:=[profile?]
	>=dev-haskell/semigroupoids-1.0:=[profile?] <dev-haskell/semigroupoids-5.4:=[profile?]
	>=dev-haskell/semigroups-0.17:=[profile?] <dev-haskell/semigroups-1.19:=[profile?]
	>=dev-haskell/text-0.11.2.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.7:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	<dev-haskell/vector-builder-0.4:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'hashable                    < 1.3' 'hashable                    < 1.4' \
		'primitive                   < 0.7' 'primitive                   < 0.8' \
		'profunctors                 < 5.4' 'profunctors                 < 5.6'
}
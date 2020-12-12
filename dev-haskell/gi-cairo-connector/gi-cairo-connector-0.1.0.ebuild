# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GI friendly Binding to the Cairo library"
HOMEPAGE="https://github.com/cohomology/gi-cairo-render"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/gi-cairo-1.0:=[profile?] <dev-haskell/gi-cairo-2:=[profile?]
	>=dev-haskell/gi-cairo-render-0.1:=[profile?] <dev-haskell/gi-cairo-render-0.2:=[profile?]
	>=dev-haskell/haskell-gi-base-0.24.0:=[profile?] <dev-haskell/haskell-gi-base-0.25:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0
"

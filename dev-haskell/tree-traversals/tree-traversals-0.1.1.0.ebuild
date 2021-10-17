# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: -development

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Functions and newtype wrappers for traversing Trees"
HOMEPAGE="https://github.com/rampion/tree-traversals"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="CC0-1.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/doctest-0.13
		>=dev-haskell/mtl-2.2.1 )
"

src_prepare() {
	cabal_chdeps \
		'base >=4.10 && <4.13' 'base >=4.10 && <4.15'

	default
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-development
}

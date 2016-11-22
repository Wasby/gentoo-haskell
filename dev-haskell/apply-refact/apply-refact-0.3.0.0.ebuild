# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Perform refactorings specified by the refact library"
HOMEPAGE="http://hackage.haskell.org/package/apply-refact"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # floats slightly around ghc versions

RDEPEND="dev-haskell/filemanip:=[profile?]
	>=dev-haskell/ghc-exactprint-0.5.2:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	>=dev-haskell/refact-0.2:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/transformers:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/silently
		dev-haskell/tasty
		dev-haskell/tasty-expected-failure
		dev-haskell/tasty-golden )
"

src_prepare() {
	default

	cabal_chdeps \
		'ghc == 8.0.1' 'ghc >= 8.0.1' \
		'ghc  == 8.0.1' 'ghc  >= 8.0.1'
}

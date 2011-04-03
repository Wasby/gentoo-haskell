# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.12

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer"
HOMEPAGE="http://code.haskell.org/haskell-src-exts"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cpphs-1.3
		>=dev-lang/ghc-6.12"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2
		dev-haskell/happy"

src_prepare() {
	# test suite is broken, expects the package to be already installed.
	# this new Setup.hs will use the package inplice for tests
	cp "${FILESDIR}/${P}-Setup.hs" "${S}/Setup.hs"

	# remove broken tests. they will fail if you expect them to pass, and pass
	# if you expect them to fail...
	rm "${S}/Test/examples/Unicode"{.hs,Syntax.hs}
}

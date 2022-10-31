# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.2.9999
#hackport: flags: -parsec-struct-diff

CABAL_PN="Cabal"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
CABAL_FEATURES+=" nocabaldep" # in case installed Cabal is broken
inherit haskell-cabal

DESCRIPTION="A framework for packaging Haskell software"
HOMEPAGE="https://www.haskell.org/cabal/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND=">=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-parsec-struct-diff
}

CABAL_CORE_LIB_GHC_PV="9.2.4"

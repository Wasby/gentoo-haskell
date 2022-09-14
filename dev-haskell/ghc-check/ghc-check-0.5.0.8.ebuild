# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.2.9999
#hackport: flags: ghc-check-use-package-abis:package-abis

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="detect mismatches between compile-time and run-time versions of the ghc api"
HOMEPAGE="https://hackage.haskell.org/package/ghc-check"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+package-abis"

RDEPEND="dev-haskell/ghc-paths:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	>=dev-haskell/th-compat-0.1.2:=[profile?]
	dev-lang/ghc:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag package-abis ghc-check-use-package-abis)
}
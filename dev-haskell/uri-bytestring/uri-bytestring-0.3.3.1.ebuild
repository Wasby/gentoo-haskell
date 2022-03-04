# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: -lib-werror

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell URI parsing as ByteStrings"
HOMEPAGE="https://github.com/Soostone/uri-bytestring"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/attoparsec-0.13.1.0:=[profile?]
	>=dev-haskell/blaze-builder-0.3.0.0:=[profile?]
	>=dev-haskell/th-lift-instances-0.1.8:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/base-compat-0.7.0
		dev-haskell/hedgehog
		dev-haskell/hunit
		dev-haskell/safe
		dev-haskell/tasty
		dev-haskell/tasty-hedgehog
		dev-haskell/tasty-hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-lib-werror
}
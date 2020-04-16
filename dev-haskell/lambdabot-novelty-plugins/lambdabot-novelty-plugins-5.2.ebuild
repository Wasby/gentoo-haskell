# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Novelty plugins for Lambdabot"
HOMEPAGE="https://wiki.haskell.org/Lambdabot"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/dice-0.1:=[profile?]
	>=dev-haskell/lambdabot-core-5.2:=[profile?] <dev-haskell/lambdabot-core-5.3:=[profile?]
	>=dev-haskell/misfortune-0.1:=[profile?]
	>=dev-haskell/random-fu-0.2.6.2:=[profile?]
	>=dev-haskell/regex-tdfa-1.1:=[profile?]
	>=dev-haskell/unlambda-0.1:=[profile?]
	>=dev-lang/brainfuck-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal
RESTRICT="test" # Some of the tests are broken

DESCRIPTION="Transform text from the command-line using Haskell expressions"
HOMEPAGE="https://github.com/gelisam/hawk#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/extra-1.5.3:=[profile?]
	>=dev-haskell/filelock-0.1.0.1:=[profile?]
	>=dev-haskell/haskell-src-exts-1.18.2:=[profile?]
	>=dev-haskell/hint-0.7.0:=[profile?]
	>=dev-haskell/list-t-1:=[profile?]
	>=dev-haskell/stringsearch-0.3.6.6:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	>=dev-haskell/cabal-doctest-1.0.4
"
#	test? ( >=dev-haskell/aeson-1.1.2.0
#		>=dev-haskell/attoparsec-0.13.1.0
#		>=dev-haskell/doctest-0.11.4
#		>=dev-haskell/easy-file-0.2.1
#		>=dev-haskell/exceptions-0.8.3
#		>=dev-haskell/hspec-2.4.4
#		>=dev-haskell/hunit-1.5.0.0
#		>=dev-haskell/temporary-1.2.1
#		>=dev-haskell/test-framework-0.8.1.1
#		>=dev-haskell/test-framework-hunit-0.3.0.2 )
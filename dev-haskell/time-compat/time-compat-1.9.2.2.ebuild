# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="Compatibility with old-time for the time package"
HOMEPAGE="https://github.com/phadej/time-compat"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # requires quickcheck-2.13

RDEPEND=">=dev-haskell/base-orphans-0.8.1:=[profile?] <dev-haskell/base-orphans-0.9:=[profile?]
	>=dev-haskell/fail-4.9.0.0:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/old-locale-1.0.0.2:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-haskell/semigroups-0.18.5:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.12"
# 	test? ( >=dev-haskell/base-compat-0.10.5 <dev-haskell/base-compat-0.11
# 		>=dev-haskell/quickcheck-2.13 <dev-haskell/quickcheck-2.14
# 		>=dev-haskell/tagged-0.8.6 <dev-haskell/tagged-0.9
# 		>=dev-haskell/tasty-1.2.1 <dev-haskell/tasty-1.3
# 		>=dev-haskell/tasty-hunit-0.10 <dev-haskell/tasty-hunit-0.11
# 		>=dev-haskell/tasty-quickcheck-0.10 <dev-haskell/tasty-quickcheck-0.11
# 		|| ( ( >=dev-haskell/hunit-1.3.1 <dev-haskell/hunit-1.3.2 )
# 			( >=dev-haskell/hunit-1.6.0.0 <dev-haskell/hunit-1.7 ) ) )
# "
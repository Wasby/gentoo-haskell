# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A Haskell Language Server plugin that qualifies imported names"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-qualify-imported-names-plugin#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

CABAL_CHDEPS=(
	'hls-test-utils             ^>=1.2' 'hls-test-utils >=1.2'
)

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/dlist:=[profile?]
	>=dev-haskell/ghcide-1.6:=[profile?] <dev-haskell/ghcide-1.9:=[profile?]
	dev-haskell/hls-graph:=[profile?]
	>=dev-haskell/hls-plugin-api-1.3:=[profile?] <dev-haskell/hls-plugin-api-1.6:=[profile?]
	dev-haskell/lsp:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? (
		>=dev-haskell/hls-test-utils-1.2
	)
"

src_test() {
	# Limit tasty threads to avoid random failures
	# See: <https://github.com/haskell/haskell-language-server/issues/3224#issuecomment-1257070277>
	export TASTY_NUM_THREADS=1
	haskell-cabal_src_test
}
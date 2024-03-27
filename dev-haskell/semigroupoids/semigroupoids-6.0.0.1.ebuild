# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: +doctests,+comonad,+containers,+contravariant,+distributive,+tagged,+unordered-containers

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Semigroupoids: Category sans id"
HOMEPAGE="https://github.com/ekmett/semigroupoids"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/base-orphans-0.8.4:=[profile?] <dev-haskell/base-orphans-1:=[profile?]
	>=dev-haskell/bifunctors-5.6:=[profile?] <dev-haskell/bifunctors-6:=[profile?]
	>=dev-haskell/comonad-5.0.8:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/contravariant-1.5.3:=[profile?] <dev-haskell/contravariant-2:=[profile?]
	>=dev-haskell/distributive-0.5.2:=[profile?] <dev-haskell/distributive-1:=[profile?]
	>=dev-haskell/foldable1-classes-compat-0.1:=[profile?] <dev-haskell/foldable1-classes-compat-0.2:=[profile?]
	>=dev-haskell/hashable-1.2.7.0:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/tagged-0.8.7:=[profile?] <dev-haskell/tagged-1:=[profile?]
	>=dev-haskell/transformers-compat-0.6:=[profile?] <dev-haskell/transformers-compat-0.8:=[profile?]
	>=dev-haskell/unordered-containers-0.2.8.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=comonad \
		--flag=containers \
		--flag=contravariant \
		--flag=distributive \
		--flag=doctests \
		--flag=tagged \
		--flag=unordered-containers
}
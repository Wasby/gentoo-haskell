# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="GPipe"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Typesafe functional GPU graphics programming"
HOMEPAGE="https://github.com/tobbebex/GPipe-Core#readme"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/boolean-0.2:=[profile?] <dev-haskell/boolean-0.3:=[profile?]
	>=dev-haskell/exception-transformers-0.3:=[profile?] <dev-haskell/exception-transformers-0.5:=[profile?]
	>=dev-haskell/gl-0.8:=[profile?] <dev-haskell/gl-0.9:=[profile?]
	>=dev-haskell/hashtables-1.2:=[profile?] <dev-haskell/hashtables-1.3:=[profile?]
	>=dev-haskell/linear-1.18:=[profile?] <dev-haskell/linear-1.21:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

S="${WORKDIR}/${MY_P}"

# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="conduit-audio interface to the libsndfile audio file library"
HOMEPAGE="https://github.com/mtolly/conduit-audio"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/conduit:=[profile?]
	>=dev-haskell/conduit-audio-0.1:=[profile?] <dev-haskell/conduit-audio-0.3:=[profile?]
	dev-haskell/hsndfile:=[profile?]
	dev-haskell/hsndfile-vector:=[profile?]
	dev-haskell/resourcet:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	default

	cabal_chdeps \
		'base >= 4.6 && < 4.11' 'base >= 4.6'
}

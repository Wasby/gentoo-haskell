# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell IDE written in Haskell"
HOMEPAGE="http://www.leksah.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+dyre loc +network-uri +threaded yi"

RESTRICT=test # tests do not compile

RDEPEND=">=app-editors/leksah-server-0.15.0.8:=[profile?] <app-editors/leksah-server-0.16:=[profile?]
	>=dev-haskell/binary-0.5.0.0:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/binary-shared-0.8.2:=[profile?] <dev-haskell/binary-shared-0.9:=[profile?]
	dev-haskell/blaze-html:=[profile?]
	>=dev-haskell/cabal-1.10.2.0:=[profile?] <dev-haskell/cabal-1.23:=[profile?]
	>=dev-haskell/conduit-1.0.8:=[profile?] <dev-haskell/conduit-1.3:=[profile?]
	>=dev-haskell/cpphs-1.19:=[profile?] <dev-haskell/cpphs-1.20:=[profile?]
	>=dev-haskell/executable-path-0.0.3:=[profile?] <dev-haskell/executable-path-0.1:=[profile?]
	dev-haskell/ghcjs-codemirror:=[profile?]
	>=dev-haskell/ghcjs-dom-0.2.1.0:=[profile?] <dev-haskell/ghcjs-dom-0.3:=[profile?]
	>=dev-haskell/gio-0.13.0.0:=[profile?] <dev-haskell/gio-0.14:=[profile?]
	>=dev-haskell/glib-0.13.2.1:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	>=dev-haskell/gtk3-0.14.1:=[profile?] <dev-haskell/gtk3-0.15:=[profile?]
	>=dev-haskell/gtksourceview3-0.13.1.5:=[profile?] <dev-haskell/gtksourceview3-0.14:=[profile?]
	>=dev-haskell/haskell-src-exts-1.13.5:=[profile?] <dev-haskell/haskell-src-exts-1.17:=[profile?]
	>=dev-haskell/hlint-1.9.21:=[profile?] <dev-haskell/hlint-1.10:=[profile?]
	>=dev-haskell/hslogger-1.0.7:=[profile?] <dev-haskell/hslogger-1.3:=[profile?]
	>=dev-haskell/jsaddle-0.2.1.0:=[profile?] <dev-haskell/jsaddle-0.3:=[profile?]
	dev-haskell/lens:=[profile?]
	>=dev-haskell/ltk-0.15.0.4:=[profile?] <dev-haskell/ltk-0.16:=[profile?]
	>=dev-haskell/mtl-1.1.0.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/old-time-1.0.0.1:=[profile?] <dev-haskell/old-time-1.2:=[profile?]
	>=dev-haskell/parsec-2.1.0.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/pretty-show-1.6.3:=[profile?] <dev-haskell/pretty-show-1.7:=[profile?]
	>=dev-haskell/quickcheck-2.4.2:2=[profile?] <dev-haskell/quickcheck-2.9:2=[profile?]
	>=dev-haskell/regex-base-0.93:=[profile?] <dev-haskell/regex-base-0.94:=[profile?]
	>=dev-haskell/regex-tdfa-1.1:=[profile?] <dev-haskell/regex-tdfa-1.3:=[profile?]
	dev-haskell/regex-tdfa-text:=[profile?]
	>=dev-haskell/shakespeare-2.0.0.1:=[profile?] <dev-haskell/shakespeare-2.1:=[profile?]
	>=dev-haskell/stm-2.4.4:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/strict-0.3.2:=[profile?] <dev-haskell/strict-0.4:=[profile?]
	>=dev-haskell/text-0.11.1.5:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.2.2.0:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/utf8-string-0.3.1.1:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/vado-0.0.1:=[profile?] <dev-haskell/vado-0.1:=[profile?]
	>=dev-haskell/vcsgui-0.1.0:=[profile?] <dev-haskell/vcsgui-0.2:=[profile?]
	>=dev-haskell/vcswrapper-0.1.0:=[profile?] <dev-haskell/vcswrapper-0.2:=[profile?]
	>=dev-haskell/webkitgtk3-0.13:=[profile?] <dev-haskell/webkitgtk3-0.15:=[profile?]
	dev-haskell/webkitgtk3-javascriptcore:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	loc? ( dev-haskell/hgettext:=[profile?]
		dev-haskell/setlocale:=[profile?] )
	network-uri? ( >=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-2.7:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?] )
	!network-uri? ( >=dev-haskell/network-2.2:=[profile?] <dev-haskell/network-2.6:=[profile?] )
	yi? ( >=app-editors/yi-0.11.2:=[profile?] <app-editors/yi-0.12:=[profile?]
		>=dev-haskell/yi-language-0.1.0.8:=[profile?]
		>=dev-haskell/yi-rope-0.7.0.0:=[profile?] <dev-haskell/yi-rope-0.8:=[profile?]
		dyre? ( >=dev-haskell/dyre-0.8.3:=[profile?] <dev-haskell/dyre-0.9:=[profile?] ) )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
	test? ( dev-haskell/monad-loops )
"

src_prepare() {
	cabal_chdeps \
		'yi-language >=0.1.0.8 && <0.2' 'yi-language >=0.1.0.8'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag dyre dyre) \
		$(cabal_flag loc loc) \
		$(cabal_flag network-uri network-uri) \
		$(cabal_flag threaded threaded) \
		$(cabal_flag yi yi)
}

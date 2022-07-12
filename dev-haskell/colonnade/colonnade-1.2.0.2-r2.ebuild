# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_HACKAGE_REVISION="2"
inherit haskell-cabal

CABAL_FILE="${S}/${PN}.cabal"
CABAL_DISTFILE="${P}-rev${CABAL_HACKAGE_REVISION}.cabal"

DESCRIPTION="Generic types and functions for columnar encoding and decoding"
HOMEPAGE="https://github.com/andrewthad/colonnade#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${CABAL_HACKAGE_REVISION}.cabal
		-> ${CABAL_DISTFILE}"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

PATCHES=( "${FILESDIR}/${PN}-1.2.0.2-cabal-doctest.patch" )

RDEPEND=">=dev-haskell/contravariant-1.2:=[profile?] <dev-haskell/contravariant-1.6:=[profile?]
	>=dev-haskell/profunctors-5.0:=[profile?] <dev-haskell/profunctors-5.7:=[profile?]
	>=dev-haskell/semigroups-0.18.2:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	dev-haskell/cabal-doctest
	test? ( dev-haskell/ansi-wl-pprint
		dev-haskell/base-compat
		dev-haskell/doctest
		dev-haskell/fast-logger
		dev-haskell/quickcheck
		dev-haskell/semigroupoids )
"
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${CABAL_DISTFILE}" "${CABAL_FILE}" || die

	# Convert to unix line endings
	dos2unix "${CABAL_FILE}" || die

	# Apply patches *after* pulling the revised cabal
	default

	cabal_chdeps \
		'semigroups >= 0.18.2 && < 0.20' 'semigroups >=0.18.2'
}
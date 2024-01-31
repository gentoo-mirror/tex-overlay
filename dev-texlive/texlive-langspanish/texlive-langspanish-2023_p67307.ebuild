# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

TEXLIVE_MODULE_CONTENTS="
	antique-spanish-units.r68322
	babel-catalan.r30259
	babel-galician.r30270
	babel-spanish.r59367
	collection-basic.r59159
	es-tex-faq.r15878
	hyphen-catalan.r58609
	hyphen-galician.r58652
	hyphen-spanish.r58652
	l2tabu-spanish.r15878
	latex2e-help-texinfo-spanish.r65614
	latexcheat-esmx.r36866
	lshort-spanish.r35050
	texlive-es.r66059
	collection-langspanish.r67307
"
TEXLIVE_MODULE_DOC_CONTENTS="
	antique-spanish-units.doc.r68322
	babel-catalan.doc.r30259
	babel-galician.doc.r30270
	babel-spanish.doc.r59367
	es-tex-faq.doc.r15878
	hyphen-spanish.doc.r58652
	l2tabu-spanish.doc.r15878
	latex2e-help-texinfo-spanish.doc.r65614
	latexcheat-esmx.doc.r36866
	lshort-spanish.doc.r35050
	texlive-es.doc.r66059
"
TEXLIVE_MODULE_SRC_CONTENTS="
	babel-catalan.source.r30259
	babel-galician.source.r30270
	babel-spanish.source.r59367
	hyphen-galician.source.r58652
	hyphen-spanish.source.r58652
"
inherit texlive-module
DESCRIPTION="TeXLive Spanish"
RESTRICT="mirror"

LICENSE="CC-BY-4.0 LPPL-1.3 MIT TeX-other-free public-domain"
SLOT="0/2023"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~loong ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x64-solaris"
DEPEND="
	>=dev-texlive/texlive-basic-2019
"
RDEPEND="
	${DEPEND}
"

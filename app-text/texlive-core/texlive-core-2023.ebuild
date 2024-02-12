# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

TL_SOURCE_VERSION=20230311
inherit flag-o-matic toolchain-funcs libtool texlive-common

MY_P=${PN%-core}-${TL_SOURCE_VERSION}-source

DESCRIPTION="A complete TeX distribution"
HOMEPAGE="https://tug.org/texlive/"
SLOT="0"
LICENSE="Apache-2.0 Artistic BSD BSD-2 FDL-1.3 GPL-1 GPL-2 GPL-3 GPL-3+ LGPL-3 LPPL-1.0 LPPL-1.2 LPPL-1.3 LPPL-1.3c MIT TeX TeX-other-free public-domain"
RESTRICT="mirror"

GENTOO_TEX_PATCHES_NUM=2

SRC_URI="
	https://mirrors.ctan.org/systems/texlive/Source/${MY_P}.tar.xz
	https://gitweb.gentoo.org/proj/tex-patches.git/snapshot/tex-patches-${GENTOO_TEX_PATCHES_NUM}.tar.bz2
		-> gentoo-tex-patches-${GENTOO_TEX_PATCHES_NUM}.tar.bz2
"

# We ship binextra collection alongside
TL_CORE_BINEXTRA_CONTENTS="
	collection-binextra.r69527
	a2ping.r52964
	adhocfilelist.r29349
	arara.r68431
	asymptote.r67300
	bundledoc.r64620
	checklistings.r38300
	chklref.r52649
	chktex.r64797
	clojure-pamphlet.r67201
	cluttex.r68912
	ctan-o-mat.r51578
	ctanbib.r68650
	ctanify.r44129
	ctanupload.r26313
	ctie.r66186
	cweb.r69586
	de-macro.r66746
	detex.r66186
	digestif.r65223
	dtl.r62387
	dtxgen.r51663
	dvi2tty.r66186
	dviasm.r68043
	dvicopy.r66186
	dvidvi.r65952
	dviinfox.r59216
	dviljk.r66186
	dviout-util.r66186
	dvipng.r66203
	dvipos.r66186
	easydtx.r68514
	findhyph.r47444
	fragmaster.r26313
	git-latexdiff.r54732
	gsftopk.r52851
	installfont.r31205
	ketcindy.r58661
	lacheck.r66186
	latex-git-log.r54010
	latex-papersize.r53131
	latex2man.r64477
	latex2nemeth.r65269
	latexfileversion.r29349
	latexindent.r69472
	latexpand.r66226
	light-latex-make.r66473
	listings-ext.r29349
	ltxfileinfo.r38663
	ltximg.r59335
	make4ht.r66130
	match_parens.r66681
	mflua.r62774
	mkjobtexmf.r29725
	optexcount.r59817
	patgen.r66186
	pdfbook2.r53521
	pdfcrop.r66862
	pdfjam.r68597
	pdflatexpicscale.r46617
	pdftex-quiet.r49169
	pdftosrc.r66186
	pdfxup.r59001
	pfarrei.r68950
	pkfix.r26032
	pkfix-helper.r56061
	ppmcheckpdf.r69527
	purifyeps.r29725
	pythontex.r59514
	runtexshebang.r68882
	seetexk.r57972
	spix.r65050
	srcredact.r38710
	sty2dtx.r64967
	synctex.r66203
	tex4ebook.r66621
	texaccents.r64447
	texblend.r68961
	texcount.r49013
	texdef.r64967
	texdiff.r29752
	texdirflatten.r55064
	texdoc.r69672
	texdoctk.r62186
	texfot.r68110
	texlive-scripts-extra.r62517
	texliveonfly.r55777
	texloganalyser.r54526
	texlogfilter.r62792
	texlogsieve.r69436
	texosquery.r53676
	texplate.r67201
	texware.r66186
	tie.r66186
	tlcockpit.r54857
	tpic2pdftex.r52851
	typeoutfileinfo.r67526
	upmendex.r66381
	web.r66186
	xindex.r67771
	xindy.r65958
	xpdfopen.r65952
"
TL_CORE_BINEXTRA_DOC_CONTENTS="
	a2ping.doc.r52964
	adhocfilelist.doc.r29349
	arara.doc.r68431
	asymptote.doc.r67300
	bundledoc.doc.r64620
	checklistings.doc.r38300
	chklref.doc.r52649
	chktex.doc.r64797
	clojure-pamphlet.doc.r67201
	cluttex.doc.r68912
	ctan-o-mat.doc.r51578
	ctan_chk.doc.r36304
	ctanbib.doc.r68650
	ctanify.doc.r44129
	ctanupload.doc.r26313
	ctie.doc.r66186
	cweb.doc.r69586
	de-macro.doc.r66746
	detex.doc.r66186
	digestif.doc.r65223
	dtl.doc.r62387
	dtxgen.doc.r51663
	dvi2tty.doc.r66186
	dviasm.doc.r68043
	dvicopy.doc.r66186
	dvidvi.doc.r65952
	dviinfox.doc.r59216
	dviljk.doc.r66186
	dviout-util.doc.r66186
	dvipng.doc.r66203
	dvipos.doc.r66186
	easydtx.doc.r68514
	findhyph.doc.r47444
	fragmaster.doc.r26313
	git-latexdiff.doc.r54732
	gsftopk.doc.r52851
	hook-pre-commit-pkg.doc.r41378
	installfont.doc.r31205
	ketcindy.doc.r58661
	lacheck.doc.r66186
	latex-git-log.doc.r54010
	latex-papersize.doc.r53131
	latex2man.doc.r64477
	latex2nemeth.doc.r65269
	latexfileversion.doc.r29349
	latexindent.doc.r69472
	latexpand.doc.r66226
	light-latex-make.doc.r66473
	listings-ext.doc.r29349
	ltxfileinfo.doc.r38663
	ltximg.doc.r59335
	make4ht.doc.r66130
	match_parens.doc.r66681
	mkjobtexmf.doc.r29725
	optexcount.doc.r59817
	patgen.doc.r66186
	pdfbook2.doc.r53521
	pdfcrop.doc.r66862
	pdfjam.doc.r68597
	pdflatexpicscale.doc.r46617
	pdftex-quiet.doc.r49169
	pdftosrc.doc.r66186
	pdfxup.doc.r59001
	pfarrei.doc.r68950
	pkfix.doc.r26032
	pkfix-helper.doc.r56061
	ppmcheckpdf.doc.r69527
	purifyeps.doc.r29725
	pythontex.doc.r59514
	runtexshebang.doc.r68882
	seetexk.doc.r57972
	spix.doc.r65050
	srcredact.doc.r38710
	sty2dtx.doc.r64967
	synctex.doc.r66203
	tex4ebook.doc.r66621
	texaccents.doc.r64447
	texblend.doc.r68961
	texcount.doc.r49013
	texdef.doc.r64967
	texdiff.doc.r29752
	texdirflatten.doc.r55064
	texdoc.doc.r69672
	texdoctk.doc.r62186
	texfot.doc.r68110
	texlive-scripts-extra.doc.r62517
	texliveonfly.doc.r55777
	texloganalyser.doc.r54526
	texlogfilter.doc.r62792
	texlogsieve.doc.r69436
	texosquery.doc.r53676
	texplate.doc.r67201
	texware.doc.r66186
	tie.doc.r66186
	tlcockpit.doc.r54857
	tpic2pdftex.doc.r52851
	typeoutfileinfo.doc.r67526
	upmendex.doc.r66381
	web.doc.r66186
	xindex.doc.r67771
	xindy.doc.r65958
	xpdfopen.doc.r65952
"
TL_CORE_BINEXTRA_SRC_CONTENTS="
	adhocfilelist.source.r29349
	arara.source.r68431
	checklistings.source.r38300
	clojure-pamphlet.source.r67201
	listings-ext.source.r29349
	mkjobtexmf.source.r29725
	optexcount.source.r59817
	pfarrei.source.r68950
	pythontex.source.r59514
	texaccents.source.r64447
	texdef.source.r64967
	texosquery.source.r53676
	texplate.source.r67201
	tlcockpit.source.r54857
"

# Macros that are not a part of texlive-sources or collection-binextra but still needed
# for other packages during installation
TL_CORE_EXTRA_CONTENTS="
	hyphen-base.r68321
	gsftopk.r52851
	texlive.infra.r69740
	texlive-scripts.r69754
"
TL_CORE_EXTRA_DOC_CONTENTS="
	gsftopk.doc.r52851
	texlive.infra.doc.r69740
	texlive-scripts.doc.r69754
"

TEXLIVE_MODULE_BINSCRIPTS="
	texmf-dist/scripts/a2ping/a2ping.pl
	texmf-dist/scripts/adhocfilelist/adhocfilelist.sh
	texmf-dist/scripts/arara/arara.sh
	texmf-dist/scripts/bundledoc/arlatex
	texmf-dist/scripts/bundledoc/bundledoc
	texmf-dist/scripts/checklistings/checklistings.sh
	texmf-dist/scripts/chklref/chklref.pl
	texmf-dist/scripts/clojure-pamphlet/pamphletangler
	texmf-dist/scripts/cluttex/cluttex.lua
	texmf-dist/scripts/ctan-o-mat/ctan-o-mat.pl
	texmf-dist/scripts/ctanbib/ctanbib
	texmf-dist/scripts/ctanify/ctanify
	texmf-dist/scripts/ctanupload/ctanupload.pl
	texmf-dist/scripts/de-macro/de-macro
	texmf-dist/scripts/digestif/digestif.texlua
	texmf-dist/scripts/dtxgen/dtxgen
	texmf-dist/scripts/dviasm/dviasm.py
	texmf-dist/scripts/dviinfox/dviinfox.pl
	texmf-dist/scripts/easydtx/edtx2dtx.pl
	texmf-dist/scripts/findhyph/findhyph
	texmf-dist/scripts/fragmaster/fragmaster.pl
	texmf-dist/scripts/git-latexdiff/git-latexdiff
	texmf-dist/scripts/installfont/installfont-tl
	texmf-dist/scripts/ketcindy/ketcindy.pl
	texmf-dist/scripts/latex-git-log/latex-git-log
	texmf-dist/scripts/latex-papersize/latex-papersize.py
	texmf-dist/scripts/latex2man/latex2man
	texmf-dist/scripts/latex2nemeth/latex2nemeth
	texmf-dist/scripts/latexfileversion/latexfileversion
	texmf-dist/scripts/latexindent/latexindent.pl
	texmf-dist/scripts/latexpand/latexpand
	texmf-dist/scripts/light-latex-make/llmk.lua
	texmf-dist/scripts/listings-ext/listings-ext.sh
	texmf-dist/scripts/ltxfileinfo/ltxfileinfo
	texmf-dist/scripts/ltximg/ltximg.pl
	texmf-dist/scripts/make4ht/make4ht
	texmf-dist/scripts/match_parens/match_parens
	texmf-dist/scripts/mkjobtexmf/mkjobtexmf.pl
	texmf-dist/scripts/optexcount/optexcount
	texmf-dist/scripts/pdfbook2/pdfbook2
	texmf-dist/scripts/pdfcrop/pdfcrop.pl
	texmf-dist/scripts/pdfjam/pdfjam
	texmf-dist/scripts/pdflatexpicscale/pdflatexpicscale.pl
	texmf-dist/scripts/pdftex-quiet/pdftex-quiet
	texmf-dist/scripts/pdfxup/pdfxup
	texmf-dist/scripts/pfarrei/a5toa4.tlu
	texmf-dist/scripts/pfarrei/pfarrei.tlu
	texmf-dist/scripts/pkfix/pkfix.pl
	texmf-dist/scripts/pkfix-helper/pkfix-helper
	texmf-dist/scripts/purifyeps/purifyeps
	texmf-dist/scripts/pythontex/depythontex.py
	texmf-dist/scripts/pythontex/pythontex.py
	texmf-dist/scripts/runtexshebang/runtexshebang.lua
	texmf-dist/scripts/spix/spix.py
	texmf-dist/scripts/srcredact/srcredact.pl
	texmf-dist/scripts/sty2dtx/sty2dtx.pl
	texmf-dist/scripts/tex4ebook/tex4ebook
	texmf-dist/scripts/texaccents/texaccents.sno
	texmf-dist/scripts/texblend/texblend
	texmf-dist/scripts/texcount/texcount.pl
	texmf-dist/scripts/texdef/texdef.pl
	texmf-dist/scripts/texdiff/texdiff
	texmf-dist/scripts/texdirflatten/texdirflatten
	texmf-dist/scripts/texdoc/texdoc.tlu
	texmf-dist/scripts/texfot/texfot.pl
	texmf-dist/scripts/texlive/fmtutil-sys.sh
	texmf-dist/scripts/texlive/fmtutil-user.sh
	texmf-dist/scripts/texlive/fmtutil.pl
	texmf-dist/scripts/texlive/mktexlsr
	texmf-dist/scripts/texlive/mktexlsr.pl
	texmf-dist/scripts/texlive/mktexmf
	texmf-dist/scripts/texlive/mktexpk
	texmf-dist/scripts/texlive/mktextfm
	texmf-dist/scripts/texlive/rungs.lua
	texmf-dist/scripts/texlive/tlmgr.pl
	texmf-dist/scripts/texlive/updmap-sys.sh
	texmf-dist/scripts/texlive/updmap-user.sh
	texmf-dist/scripts/texlive/updmap.pl
	texmf-dist/scripts/texlive-extra/allcm.sh
	texmf-dist/scripts/texlive-extra/allneeded.sh
	texmf-dist/scripts/texlive-extra/dvi2fax.sh
	texmf-dist/scripts/texlive-extra/dvired.sh
	texmf-dist/scripts/texlive-extra/e2pall.pl
	texmf-dist/scripts/texlive-extra/kpsetool.sh
	texmf-dist/scripts/texlive-extra/kpsewhere.sh
	texmf-dist/scripts/texlive-extra/ps2frag.sh
	texmf-dist/scripts/texlive-extra/pslatex.sh
	texmf-dist/scripts/texlive-extra/texconfig-dialog.sh
	texmf-dist/scripts/texlive-extra/texconfig-sys.sh
	texmf-dist/scripts/texlive-extra/texconfig.sh
	texmf-dist/scripts/texlive-extra/texlinks.sh
	texmf-dist/scripts/texliveonfly/texliveonfly.py
	texmf-dist/scripts/texloganalyser/texloganalyser
	texmf-dist/scripts/texlogfilter/texlogfilter
	texmf-dist/scripts/texlogsieve/texlogsieve
	texmf-dist/scripts/texosquery/texosquery-jre5.sh
	texmf-dist/scripts/texosquery/texosquery-jre8.sh
	texmf-dist/scripts/texosquery/texosquery.sh
	texmf-dist/scripts/texplate/texplate.sh
	texmf-dist/scripts/tlcockpit/tlcockpit.sh
	texmf-dist/scripts/typeoutfileinfo/typeoutfileinfo.sh
	texmf-dist/scripts/xindex/xindex.lua
"

TEXLIVE_MODULE_BINLINKS="
	cluttex:clxelatex
	cluttex:cllualatex
	pdfcrop:rpdfcrop
	texdef:latexdef
	fmtutil:mktexfmt
	mktexlsr:texhash
	allcm:allec
	kpsetool:kpsexpand
	kpsetool:kpsepath
"

# TL_CORE_EXTRA_SRC_MODULES=""

texlive-common_append_to_src_uri TL_CORE_EXTRA_CONTENTS

SRC_URI="${SRC_URI} doc? ( "
texlive-common_append_to_src_uri TL_CORE_EXTRA_DOC_CONTENTS
SRC_URI="${SRC_URI} )"
# SRC_URI="${SRC_URI} source? ( "
# for i in ${TL_CORE_EXTRA_SRC_MODULES}; do
# 	SRC_URI="${SRC_URI} https://mirrors.ctan.org/tlnet/archive/${i}.tar.xz"
# done
# SRC_URI="${SRC_URI} )"

texlive-common_append_to_src_uri TL_CORE_BINEXTRA_CONTENTS

SRC_URI="${SRC_URI} doc? ( "
texlive-common_append_to_src_uri TL_CORE_BINEXTRA_DOC_CONTENTS
SRC_URI="${SRC_URI} )"

SRC_URI="${SRC_URI} source? ( "
texlive-common_append_to_src_uri TL_CORE_BINEXTRA_SRC_CONTENTS
SRC_URI="${SRC_URI} )"

KEYWORDS="~amd64 ~arm64 ~ppc ~riscv ~x86"
IUSE="cjk X doc source tk +luajittex xetex xindy"

TEXMF_PATH=/usr/share/texmf-dist

MODULAR_X_DEPEND="
	X? (
		x11-libs/libX11
		x11-libs/libXmu
	)"

COMMON_DEPEND="
	${MODULAR_X_DEPEND}
	!app-text/epspdf
	!app-text/pdfjam
	sys-libs/zlib
	>=media-libs/harfbuzz-1.4.5:=[icu,graphite]
	>=media-libs/libpng-1.2.43-r2:0=
	media-libs/gd[png]
	media-gfx/graphite2:=
	media-gfx/potrace:=
	>=x11-libs/cairo-1.12
	>=x11-libs/pixman-0.18
	dev-libs/zziplib:=
	app-text/libpaper:=
	dev-libs/gmp:=
	dev-libs/mpfr:=
	>=dev-libs/ptexenc-1.4.3
	xetex? (
		>=app-text/teckit-2.5.3
		media-libs/fontconfig
	)
	xindy? ( dev-lisp/clisp:= )
	media-libs/freetype:2
	>=dev-libs/icu-50:=
	>=dev-libs/kpathsea-6.3.2:=
"

BDEPEND="
	sys-apps/ed
	sys-devel/flex
	virtual/pkgconfig
"

DEPEND="
	${COMMON_DEPEND}
"

RDEPEND="
	${COMMON_DEPEND}
	>=app-text/ps2pkm-1.8_p20230311
	>=app-text/dvipsk-2023.1_p20230311
	>=dev-tex/bibtexu-4.00_p20230311
	virtual/perl-Getopt-Long
	dev-perl/File-HomeDir
	dev-perl/Log-Dispatch
	dev-perl/Unicode-LineBreak
	dev-perl/YAML-Tiny
	tk? (
		dev-lang/tk
		dev-perl/Tk
	)
"

S="${WORKDIR}/${MY_P}"
BUILDDIR="${WORKDIR}/${P}_build"

src_unpack() {
	default

	mkdir -p "${BUILDDIR}" || die "failed to create build dir"
}

RELOC_TARGET=texmf-dist

src_prepare() {
	cd "${WORKDIR}" || die

	# From texlive-module.eclass.
	sed -n -e 's:\s*RELOC/::p' tlpkg/tlpobj/* > "${T}/reloclist" || die
	sed -e 's/\/[^/]*$//' -e "s:^:${RELOC_TARGET}/:" "${T}/reloclist" |
		sort -u |
		xargs mkdir -p || die
	local i
	while read -r i; do
		mv "${i}" "${RELOC_TARGET}/${i%/*}" || die
	done < "${T}/reloclist"
	mv "${WORKDIR}"/texmf* "${S}" || die "failed to move texmf files"

	cd "${S}" || die

	sed -i \
		-e "s,/usr/include /usr/local/include.*echo \$KPATHSEA_INCLUDES.*,$(pkg-config kpathsea --variable=includedir)\"," \
		texk/web2c/configure || die

	local patch_dir="${WORKDIR}/tex-patches-${GENTOO_TEX_PATCHES_NUM}"
	local drop_patches=(
		texlive-2021-unbundle-linked_scripts.patch
		texlive-core-2021-CVE-2023-32700.patch
		texlive-core-2021-clang-16.patch
		texlive-core-2021-slibtool.patch
	)
	local patch
	for patch in ${drop_patches[@]}; do
		rm "${patch_dir}/${patch}" || die "Could not remove ${patch}"
	done
	eapply "${patch_dir}"

	default

	elibtoolize
}

src_configure() {
	# It fails on alpha without this
	use alpha && append-ldflags "-Wl,--no-relax"

	# Too many regexps use A-Z a-z constructs, what causes problems with locales
	# that don't have the same alphabetical order than ascii. Bug #242430
	# So we set LC_ALL to C in order to avoid problems.
	export LC_ALL=C

	# Disable freetype-config as this is considered obsolete.
	# Also only pkg-config works for prefix as described in bug #690094
	export ac_cv_prog_ac_ct_FT2_CONFIG=no

	# revisit/upstream once we bump to 2022, bug #882245
	append-cppflags -D_GNU_SOURCE

	local econf_new_2023=(
		--enable-ptex=no
		--enable-uptex=no
		--enable-autosp=yes
		--enable-axodraw2=yes
		--enable-devnag=yes
		--enable-lacheck=yes
		--enable-m-tx=yes
		--enable-pmx=yes
		--enable-tpic2pdftex=yes
		--with-clisp-runtime=system
		--enable-xml2pmx=yes
		$(use_enable X xpdfopen)
		--enable-web2c=yes
		--enable-afm2pl=yes
		--enable-dtl=yes
		--enable-dvidvi=yes
		--enable-dviljk=yes
		--enable-dvipdfm-x=yes
		--enable-dvipos=yes
		--enable-gregorio=yes
		--enable-gsftopk=yes
		--enable-makeindexk=yes
		--enable-musixtnt=yes
		--enable-seetexk=yes
		--enable-ttfdump=yes
		--enable-upmendex=yes
		--enable-texlive=yes
		--enable-linked-scripts=no
		# web2c afm2pl chktex detex dtl dvi2tty dvidvi dviljk dviout-util dvipdfm-x dvipos gregorio gsftopk makeindexk makejvf mendexk musixtnt seetexk ttfdump upmendex texlive
	)

	tc-export CC CXX AR RANLIB
	cd "${BUILDDIR}" || die
	ECONF_SOURCE="${S}" \
		econf -C \
		--bindir="${EPREFIX}"/usr/bin \
		--datadir="${BUILDDIR}" \
		--with-system-freetype2 \
		--with-system-zlib \
		--with-system-libpng \
		--with-system-teckit \
		--with-teckit-includes="${EPREFIX}"/usr/include/teckit \
		--with-system-kpathsea \
		--with-kpathsea-includes="${EPREFIX}"/usr/include \
		--with-system-icu \
		--with-system-ptexenc \
		--with-system-harfbuzz \
		--with-system-graphite2 \
		--with-system-cairo \
		--with-system-pixman \
		--with-system-zziplib \
		--with-system-libpaper \
		--with-system-gmp \
		--with-system-gd \
		--with-system-mpfr \
		--with-system-potrace \
		--without-texinfo \
		--disable-dialog \
		--disable-multiplatform \
		--enable-chktex \
		--enable-epsfwin \
		--enable-detex \
		--enable-dvi2tty \
		--enable-mftalkwin \
		--enable-regiswin \
		--enable-shared \
		--enable-tektronixwin \
		--enable-unitermwin \
		--enable-vlna \
		--with-ps=gs \
		--disable-psutils \
		--disable-t1utils \
		--enable-ipc \
		--disable-biber \
		--disable-bibtex-x \
		--disable-dvipng \
		--disable-dvipsk \
		--disable-lcdf-typetools \
		--disable-ps2pk \
		--disable-ttf2pk2 \
		--disable-tex4htk \
		--disable-cjkutils \
		--disable-xdvik \
		--enable-luatex \
		--disable-dvisvgm \
		--disable-ps2eps \
		--disable-static \
		--disable-native-texlive-build \
		--disable-largefile \
		--disable-build-in-source-tree \
		--disable-xindy-docs \
		--disable-xindy-rules \
		--with-banner-add=" Gentoo Linux" \
		$(use_enable luajittex) \
		$(use_enable luajittex luajithbtex) \
		$(use_enable luajittex mfluajit) \
		$(use_enable xetex) \
		$(use_enable cjk dviout-util) \
		$(use_enable cjk ptex) \
		$(use_enable cjk eptex) \
		$(use_enable cjk uptex) \
		$(use_enable cjk euptex) \
		$(use_enable cjk mendexk) \
		$(use_enable cjk makejvf) \
		$(use_enable cjk pmp) \
		$(use_enable cjk upmp) \
		$(use_enable tk texdoctk) \
		$(use_with X x) \
		$(use_enable xindy) \
		"${econf_new_2023[@]}"
}

src_compile() {
	cd "${BUILDDIR}" || die
	tc-export CC CXX AR RANLIB

	emake AR="$(tc-getAR)" SHELL="${EPREFIX}"/bin/sh texmf="${EPREFIX}"${TEXMF_PATH:-/usr/share/texmf-dist}

	cd "${S}" || die
	# Mimic updmap --syncwithtrees to enable only fonts installed
	# Code copied from updmap script
	while read -r i; do
		texlive-common_is_file_present_in_texmf "${i}" || echo "${i}"
	done > "${T}/updmap_update" < <(grep -E '^(Mixed|Kanji)?Map' "texmf-dist/web2c/updmap.cfg" | sed 's@.* @@')
	{
		sed 's@/@\\/@g; s@^@/^MixedMap[     ]*@; s@$@$/s/^/#! /@' <"${T}/updmap_update"
		sed 's@/@\\/@g; s@^@/^Map[  ]*@; s@$@$/s/^/#! /@' <"${T}/updmap_update"
		sed 's@/@\\/@g; s@^@/^KanjiMap[     ]*@; s@$@$/s/^/#! /@' <"${T}/updmap_update"
	} > "${T}/updmap_update2"
	sed -f "${T}/updmap_update2" "texmf-dist/web2c/updmap.cfg" >	"${T}/updmap_update3"\
		&& cat "${T}/updmap_update3" > "texmf-dist/web2c/updmap.cfg"
}

src_install() {
	cd "${BUILDDIR}" || die
	dodir ${TEXMF_PATH:-/usr/share/texmf-dist}/web2c

	emake DESTDIR="${D}" texmf="${ED}${TEXMF_PATH:-/usr/share/texmf-dist}" run_texlinks="true" run_mktexlsr="true" install

	cd "${S}" || die
	dodir /usr/share # just in case
	cp -pR texmf-dist "${ED}/usr/share/" || die "failed to install texmf trees"
	cp -pR "${WORKDIR}"/tlpkg "${ED}/usr/share/" || die "failed to install tlpkg files"

	# When X is disabled mf-nowin doesn't exist but some scripts expect it to
	# exist. Instead, it is called mf, so we symlink it to please everything.
	use X || dosym mf /usr/bin/mf-nowin

	docinto texk
	cd "${S}/texk" || die
	dodoc ChangeLog README

	docinto dviljk
	cd "${S}/texk/dviljk" || die
	dodoc ChangeLog README NEWS

	docinto makeindexk
	cd "${S}/texk/makeindexk" || die
	dodoc ChangeLog NOTES README

	docinto web2c
	cd "${S}/texk/web2c" || die
	dodoc ChangeLog NEWS PROJECTS README

	use doc || rm -rf "${ED}/usr/share/texmf-dist/doc"

	dodir /etc/env.d
	echo 'CONFIG_PROTECT_MASK="/etc/texmf/web2c /etc/texmf/language.dat.d /etc/texmf/language.def.d /etc/texmf/updmap.d"' > "${ED}/etc/env.d/98texlive"
	# populate /etc/texmf
	keepdir /etc/texmf/web2c

	# take care of updmap.cfg and language.d files
	keepdir /etc/texmf/{updmap.d,language.dat.d,language.def.d,language.dat.lua.d}

	mv "${ED}${TEXMF_PATH}/web2c/updmap.cfg" "${ED}/etc/texmf/updmap.d/00updmap.cfg" || die "moving updmap.cfg failed"

	# Remove fmtutil.cnf, it will be regenerated from /etc/texmf/fmtutil.d files
	# by texmf-update
	rm -f "${ED}${TEXMF_PATH}/web2c/fmtutil.cnf" || die
	# Remove bundled and invalid updmap.cfg
	rm -f "${ED}/usr/share/texmf-dist/web2c/updmap.cfg" || die

	rm -f "${ED}/usr/bin/"{,u}ptex

	[[ -n ${TEXLIVE_MODULE_BINSCRIPTS} ]] && dobin_texmf_scripts ${TEXLIVE_MODULE_BINSCRIPTS}
	if [[ -n ${TEXLIVE_MODULE_BINLINKS} ]] ; then
		dodir "/usr/bin"
		for i in ${TEXLIVE_MODULE_BINLINKS} ; do
			[[ -f ${ED}/usr/bin/${i%:*} ]] || die "Trying to install an invalid BINLINK ${i%:*}. This should not happen. Please file a bug."
			dosym "${i%:*}" "/usr/bin/${i#*:}"
		done
	fi

	texlive-common_handle_config_files

	keepdir /usr/share/texmf-site

	# the virtex symlink is not installed
	# The links has to be relative, since the targets
	# is not present at this stage and MacOS doesn't
	# like non-existing targets
	dosym tex /usr/bin/virtex
	dosym pdftex /usr/bin/pdfvirtex

	find "${ED}" -name '*.la' -delete || die
}

pkg_postinst() {
	etexmf-update

	# Note that the fmtutil-sys call has no "|| die" attached to it. We
	# are here in pkg_postinst where invoking die is not sensible.
	# TODO: Research the rationale of calling fmtutil-sys here and the
	# reasons why it fails.
	einfo "Regenerating TeX formats"
	fmtutil-sys --all &> /dev/null

	elog
	elog "If you have configuration files in ${EPREFIX}/etc/texmf to merge,"
	elog "please update them and run ${EPREFIX}/usr/sbin/texmf-update."
	elog

	local display_migration_hint=false
	if [[ -n ${REPLACING_VERSIONS} ]]; then
		local new_texlive_version=$(ver_cut 1)
		local replaced_version
		for replaced_version in ${REPLACING_VERSIONS}; do
			replaced_version=$(ver_cut 1 "${replaced_version}")
			if ver_test "${replaced_version}" -lt "${new_texlive_version}" ; then
				display_migration_hint=true
				break
			fi
		done
	fi

	if ! ${display_migration_hint}; then
		return
	fi

	ewarn "If you are migrating from an older TeX distribution"
	ewarn "Please make sure you have read:"
	ewarn "https://wiki.gentoo.org/wiki/Project:TeX/Tex_Live_Migration_Guide"
	ewarn "in order to avoid possible problems"
}

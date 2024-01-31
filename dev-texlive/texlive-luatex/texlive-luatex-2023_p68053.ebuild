# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

TEXLIVE_MODULE_CONTENTS="
	addliga.r50912
	addtoluatexpath.r67821
	auto-pst-pdf-lua.r66637
	barracuda.r63708
	bezierplot.r51398
	blopentype.r68184
	checkcites.r67201
	chickenize.r57325
	chinese-jfm.r57758
	cloze.r55763
	collection-basic.r59159
	combofont.r51348
	cstypo.r41986
	ctablestack.r38514
	ekdosis.r61113
	emoji.r59961
	emojicite.r55131
	enigma.r29802
	innerscript.r57672
	interpreter.r27232
	kanaparser.r48052
	ligtype.r67601
	linebreaker.r66639
	lparse.r65693
	lt3luabridge.r64801
	lua-tinyyaml.r66776
	lua-typo.r68267
	lua-uca.r61023
	lua-ul.r63469
	lua-uni-algos.r62204
	lua-visual-debug.r65464
	lua-widow-control.r65084
	luaaddplot.r62842
	luacas.r67247
	luacensor.r62167
	luacode.r25193
	luacolor.r67987
	luacomplex.r67852
	luagcd.r65396
	luahttp.r67348
	luahyphenrules.r56200
	luaimageembed.r50788
	luaindex.r25882
	luainputenc.r20491
	luakeys.r65533
	lualatex-doc.r30473
	lualatex-math.r61464
	lualatex-truncate.r67201
	lualibs.r67994
	lualinalg.r68049
	luamathalign.r63226
	luamaths.r68050
	luamodulartables.r65485
	luamplib.r68008
	luaoptions.r64870
	luaotfload.r68143
	luapackageloader.r54779
	luaplot.r67685
	luaprogtable.r56113
	luaquotes.r65652
	luarandom.r49419
	luaset.r65376
	luatex85.r41456
	luatexbase.r52663
	luatexko.r68243
	luatextra.r20747
	luatruthtable.r67938
	luavlna.r67442
	luaxml.r60709
	lutabulartools.r67714
	minim.r68612
	minim-math.r68612
	minim-mp.r68612
	minim-pdf.r68612
	minim-xmp.r66395
	newpax.r68242
	nodetree.r68244
	odsfile.r68204
	optex.r67208
	pdfarticle.r51127
	pdfextra.r65184
	penlight.r67716
	penlightplus.r68185
	piton.r68306
	placeat.r45145
	plantuml.r67097
	pyluatex.r65855
	scikgtex.r66764
	selnolig.r38721
	showhyphenation.r67602
	showkerning.r67603
	spacekern.r67604
	spelling.r30715
	stricttex.r56320
	sympycalc.r67087
	texfindpkg.r67027
	truthtable.r68300
	tsvtemplate.r65333
	typewriter.r46641
	uninormalize.r57257
	yamlvars.r67715
	collection-luatex.r68053
"
TEXLIVE_MODULE_DOC_CONTENTS="
	addliga.doc.r50912
	addtoluatexpath.doc.r67821
	auto-pst-pdf-lua.doc.r66637
	barracuda.doc.r63708
	bezierplot.doc.r51398
	blopentype.doc.r68184
	checkcites.doc.r67201
	chickenize.doc.r57325
	chinese-jfm.doc.r57758
	cloze.doc.r55763
	combofont.doc.r51348
	cstypo.doc.r41986
	ctablestack.doc.r38514
	ekdosis.doc.r61113
	emoji.doc.r59961
	emojicite.doc.r55131
	enigma.doc.r29802
	innerscript.doc.r57672
	interpreter.doc.r27232
	kanaparser.doc.r48052
	ligtype.doc.r67601
	linebreaker.doc.r66639
	lparse.doc.r65693
	lt3luabridge.doc.r64801
	lua-tinyyaml.doc.r66776
	lua-typo.doc.r68267
	lua-uca.doc.r61023
	lua-ul.doc.r63469
	lua-uni-algos.doc.r62204
	lua-visual-debug.doc.r65464
	lua-widow-control.doc.r65084
	luaaddplot.doc.r62842
	luacas.doc.r67247
	luacensor.doc.r62167
	luacode.doc.r25193
	luacolor.doc.r67987
	luacomplex.doc.r67852
	luagcd.doc.r65396
	luahttp.doc.r67348
	luahyphenrules.doc.r56200
	luaimageembed.doc.r50788
	luaindex.doc.r25882
	luainputenc.doc.r20491
	luakeys.doc.r65533
	lualatex-doc.doc.r30473
	lualatex-math.doc.r61464
	lualatex-truncate.doc.r67201
	lualibs.doc.r67994
	lualinalg.doc.r68049
	luamathalign.doc.r63226
	luamaths.doc.r68050
	luamodulartables.doc.r65485
	luamplib.doc.r68008
	luaoptions.doc.r64870
	luaotfload.doc.r68143
	luapackageloader.doc.r54779
	luaplot.doc.r67685
	luaprogtable.doc.r56113
	luaquotes.doc.r65652
	luarandom.doc.r49419
	luaset.doc.r65376
	luatex85.doc.r41456
	luatexbase.doc.r52663
	luatexko.doc.r68243
	luatextra.doc.r20747
	luatruthtable.doc.r67938
	luavlna.doc.r67442
	luaxml.doc.r60709
	lutabulartools.doc.r67714
	minim.doc.r68612
	minim-math.doc.r68612
	minim-mp.doc.r68612
	minim-pdf.doc.r68612
	minim-xmp.doc.r66395
	newpax.doc.r68242
	nodetree.doc.r68244
	odsfile.doc.r68204
	optex.doc.r67208
	pdfarticle.doc.r51127
	pdfextra.doc.r65184
	penlight.doc.r67716
	penlightplus.doc.r68185
	piton.doc.r68306
	placeat.doc.r45145
	plantuml.doc.r67097
	pyluatex.doc.r65855
	scikgtex.doc.r66764
	selnolig.doc.r38721
	showhyphenation.doc.r67602
	showkerning.doc.r67603
	spacekern.doc.r67604
	spelling.doc.r30715
	stricttex.doc.r56320
	sympycalc.doc.r67087
	texfindpkg.doc.r67027
	truthtable.doc.r68300
	tsvtemplate.doc.r65333
	typewriter.doc.r46641
	uninormalize.doc.r57257
	yamlvars.doc.r67715
"
TEXLIVE_MODULE_SRC_CONTENTS="
	chickenize.source.r57325
	cloze.source.r55763
	ctablestack.source.r38514
	ekdosis.source.r61113
	innerscript.source.r57672
	lt3luabridge.source.r64801
	lua-typo.source.r68267
	lua-uca.source.r61023
	lua-ul.source.r63469
	lua-widow-control.source.r65084
	luaaddplot.source.r62842
	luacode.source.r25193
	luacolor.source.r67987
	luaindex.source.r25882
	luainputenc.source.r20491
	lualatex-doc.source.r30473
	lualatex-math.source.r61464
	lualatex-truncate.source.r67201
	lualibs.source.r67994
	luamathalign.source.r63226
	luamplib.source.r68008
	luaotfload.source.r68143
	luatex85.source.r41456
	luatexbase.source.r52663
	luatextra.source.r20747
	newpax.source.r68242
	nodetree.source.r68244
	piton.source.r68306
	placeat.source.r45145
	texfindpkg.source.r67027
"
inherit prefix texlive-module
DESCRIPTION="TeXLive LuaTeX packages"
RESTRICT="mirror"

LICENSE="BSD CC-BY-SA-3.0 CC-BY-SA-4.0 FDL-1.3 GPL-2 GPL-3 GPL-3+ LPPL-1.3 LPPL-1.3c MIT TeX-other-free public-domain"
SLOT="0/2023"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~loong ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x64-solaris"
RDEPEND="
	dev-texlive/texlive-latexrecommended
"

TEXLIVE_MODULE_BINSCRIPTS="
	texmf-dist/scripts/luaotfload/luaotfload-tool.lua
	texmf-dist/scripts/checkcites/checkcites.lua
	"

TEXLIVE_MODULE_BINLINKS="
	luaotfload-tool:mkluatexfontdb
	"

src_prepare() {
	default
	# https://bugs.gentoo.org/865203
	hprefixify texmf-dist/tex/luatex/luaotfload/luaotfload-database.lua
}

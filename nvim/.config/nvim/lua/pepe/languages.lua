-- language specific higlights
local base = require("pepe.base")
local styles = require("pepe.settings").styles
local utils = require("pepe.utils")
local colors = require("pepe.colors")

-- xml
local xml = {
  xmlTag = base.PepeAquaBold,
  xmlEndTag = base.PepeAquaBold,
  xmlTagName = base.PepeBlue,
  xmlEqual = base.PepeBlue,
  docbkKeyword = base.PepeAquaBold,
  xmlDocTypeDecl = base.PepeGray,
  xmlDocTypeKeyword = base.PepePurple,
  xmlCdataStart = base.PepeGray,
  xmlCdataCdata = base.PepePurple,
  dtdFunction = base.PepeGray,
  dtdTagName = base.PepePurple,
  xmlAttrib = base.PepeOrange,
  xmlProcessingDelim = base.PepeGray,
  dtdParamEntityPunct = base.PepeGray,
  dtdParamEntityDPunct = base.PepeGray,
  xmlAttribPunct = base.PepeGray,
  xmlEntity = base.PepeRed,
  xmlEntityPunct = base.PepeRed,
}

local purescript = {
  purescriptModuleKeyword = base.PepeAqua,
  purescriptModuleName = base.PepeFg1,
  purescriptWhere = base.PepeAqua,
  purescriptDelimiter = base.PepeFg4,
  purescriptType = base.PepeFg1,
  purescriptImportKeyword = base.PepeAqua,
  purescriptHidingKeyword = base.PepeAqua,
  purescriptAsKeyword = base.PepeAqua,
  purescriptStructure = base.PepeAqua,
  purescriptOperator = base.PepeBlue,
  purescriptTypeVar = base.PepeFg1,
  purescriptConstructor = base.PepeFg1,
  purescriptFunction = base.PepeFg1,
  purescriptConditional = base.PepeOrange,
  purescriptBacktick = base.PepeOrange,
}

local coffeescript = {
  coffeeExtendedOp = base.PepeFg3,
  coffeeSpecialOp = base.PepeFg3,
  coffeeCurly = base.PepeOrange,
  coffeeParen = base.PepeFg3,
  coffeeBracket = base.PepeOrange,
}

local objc = { objcTypeModifier = base.PepeRed, objcDirective = base.PepeBlue }

local moonscript = {
  moonSpecialOp = base.PepeFg3,
  moonExtendedOp = base.PepeFg3,
  moonFunction = base.PepeFg3,
  moonObject = base.PepeYellow,
}

local elixir = {
  elixirDocString = base.Comment,
  elixirStringDelimiter = base.PepeGreen,
  elixirInterpolationDelimiter = base.PepeAqua,
  elixirModuleDeclaration = base.PepeYellow,
}

local markdown = {
  markdownItalic = { fg = base.PepeFg3.fg, gui = styles.italic },
  markdownBold = { fg = base.PepeFg3.fg, gui = styles.bold },
  markdownBoldItalic = {
    fg = base.PepeFg3.fg,
    gui = table.concat({ styles.bold, styles.italic }, ","),
  },
  markdownH1 = base.PepeGreenBold,
  markdownH2 = "markdownH1",
  markdownH3 = base.PepeYellowBold,
  markdownH4 = "markdownH3",
  markdownH5 = base.PepeYellow,
  markdownH6 = "markdownH5",
  markdownCode = base.PepeAqua,
  markdownCodeBlock = base.PepeAqua,
  markdownCodeDelimiter = base.PepeAqua,
  markdownBlockquote = base.PepeGray,
  markdownListMarker = base.PepeGray,
  markdownOrderedListMarker = base.PepeGray,
  markdownRule = base.PepeGray,
  markdownHeadingRule = base.PepeGray,
  markdownUrlDelimiter = base.PepeFg3,
  markdownLinkDelimiter = base.PepeFg3,
  markdownLinkTextDelimiter = base.PepeFg3,
  markdownHeadingDelimiter = base.PepeOrange,
  markdownUrl = base.PepePurple,
  markdownUrlTitleDelimiter = base.PepeGreen,
  markdownLinkText = { fg = base.PepeGray.fg, gui = styles.underline },
  markdownIdDeclaration = "markdownLinkText",
}

local haskell = {
  haskellType = base.PepeBlue,
  haskellIdentifier = base.PepeAqua,
  haskellSeparator = base.PepeFg4,
  haskellDelimiter = base.PepeOrange,
  haskellOperators = base.PepePurple,
  haskellBacktick = base.PepeOrange,
  haskellStatement = base.PepePurple,
  haskellConditional = base.PepePurple,
  haskellLet = base.PepeRed,
  haskellDefault = base.PepeRed,
  haskellWhere = base.PepeRed,
  haskellBottom = base.PepeRedBold,
  haskellImportKeywords = base.PepePurpleBold,
  haskellDeclKeyword = base.PepeOrange,
  haskellDecl = base.PepeOrange,
  haskellDeriving = base.PepePurple,
  haskellAssocType = base.PepeAqua,
  haskellNumber = base.PepeAqua,
  haskellPragma = base.PepeRedBold,
  haskellTH = base.PepeAquaBold,
  haskellForeignKeywords = base.PepeGreen,
  haskellKeyword = base.PepeRed,
  haskellFloat = base.PepeAqua,
  haskellInfix = base.PepePurple,
  haskellQuote = base.PepeGreenBold,
  haskellShebang = base.PepeYellowBold,
  haskellLiquid = base.PepePurpleBold,
  haskellQuasiQuoted = base.PepeBlueBold,
  haskellRecursiveDo = base.PepePurple,
  haskellQuotedType = base.PepeRed,
  haskellPreProc = base.PepeFg4,
  haskellTypeRoles = base.PepeRedBold,
  haskellTypeForall = base.PepeRed,
  haskellPatternKeyword = base.PepeBlue,
}

local html = {
  htmlTag = base.PepeAquaBold,
  htmlEndTag = base.PepeAquaBold,
  htmlTagName = base.PepeBlue,
  htmlArg = base.PepeOrange,
  htmlTagN = base.PepeFg1,
  htmlSpecialTagName = base.PepeBlue,
  htmlLink = { fg = colors.fg4, gui = styles.underline },
  htmlSpecialChar = "PepeRed",
  htmlBold = { fg = colors.fg0, bg = colors.bg0, gui = styles.bold },
  htmlBoldUnderline = {
    fg = colors.fg0,
    bg = colors.bg0,
    gui = table.concat({ styles.bold, styles.underline }, ","),
  },
  htmlBoldItalic = { fg = colors.fg0, bg = colors.bg0, gui = table.concat({ styles.bold, styles.italic }, ",") },
  htmlBoldUnderlineItalic = {
    fg = colors.fg0,
    bg = colors.bg0,
    gui = table.concat({ styles.bold, styles.underline, styles.italic }, ","),
  },
  htmlUnderline = { fg = colors.fg0, bg = colors.bg0, gui = styles.underline },
  htmlUnderlineItalic = {
    fg = colors.fg0,
    bg = colors.bg0,
    gui = table.concat({ styles.underline, styles.italic }, ","),
  },
  htmlItalic = { fg = colors.fg0, bg = colors.bg0, gui = styles.italic },
}

local langs = utils.merge({
  xml,
  purescript,
  coffeescript,
  objc,
  moonscript,
  elixir,
  markdown,
  haskell,
  html,
})

return langs

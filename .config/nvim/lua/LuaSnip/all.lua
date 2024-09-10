-- Two common LuaSnip abbreviations
local ls = require("luasnip")
local s = ls.snippet

local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

-- return {
--   -- Example: how to set snippet parameters
--   require("luasnip").snippet(
--     { -- Table 1: snippet parameters
--       trig="zb",
--       dscr="Macht daraus zum Beispiel",
--       regTrig=false,
--       priority=100,
--       snippetType="autosnippet"
--     },
--     { -- Table 2: snippet nodes (don't worry about this for now---we'll cover nodes shortly)
--       t("z. B."), -- A single text node
--     }
--     -- Table 3, the advanced snippet options, is left blank.
--   ),
-- }
-- 
M = {

s({trig = "LG", snippetType = "autosnippet"},
  { t("Liebe Grüße") }
),

s({trig = "VG", snippetType = "autosnippet"},
  { t("Viele Grüße") }
),

s({trig = "MFG", snippetType = "autosnippet"},
  { t("Mit freundlichen Grüßen") }
),

s({trig = "GA", snippetType = "autosnippet"},
  { t("Gerrit Albert") }
),

s({trig = "SIG", snippetType = "autosnippet"},
  { t({"--", "Fachstudienberater Technik", " ", "0241/80 27166", " ", "RWTH Aachen", "Didaktik der Physik und Technik", "Modulbau Physik 2, Raum 003", "Otto-Blumenthal-Straße 20", "52074 Aachen"}) }
),
}

return M

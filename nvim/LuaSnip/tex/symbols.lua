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
return {
	s({ trig = ";a", snippetType = "snippet" },
		{
			t("\\alpha"),
		}
	),
	s({ trig = ";b", snippetType = "snippet" },
		{
			t("\\beta"),
		}
	),
	s({ trig = ";g", snippetType = "snippet" },
		{
			t("\\gamma"),
		}
	),
	s({ trig = ";e", snippetType = "snippet" },
		{
			t("\\varepsilon"),
		}
	),
	s({ trig = ";d", snippetType = "snippet" },
		{
			t("\\delta"),
		}
	),
	s({ trig = ";t", snippetType = "snippet" },
		{
			t("\\theta"),
		}
	),
	s({ trig = ";i", snippetType = "snippet" },
		{
			t("\\infty"),
		}
	),
}

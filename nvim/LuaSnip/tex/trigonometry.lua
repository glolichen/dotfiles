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
	s({ trig = "sin", snippetType = "snippet" },
		{
			t("\\sin\\left("),
			i(1),
			t("\\right)"),
		}
	),
	s({ trig = "cos", snippetType = "snippet" },
		{
			t("\\cos\\left("),
			i(1),
			t("\\right)"),
		}
	),
	s({ trig = "tan", snippetType = "snippet" },
		{
			t("\\tan\\left("),
			i(1),
			t("\\right)"),
		}
	),
	s({ trig = "csc", snippetType = "snippet" },
		{
			t("\\csc\\left("),
			i(1),
			t("\\right)"),
		}
	),
	s({ trig = "sec", snippetType = "snippet" },
		{
			t("\\sec\\left("),
			i(1),
			t("\\right)"),
		}
	),
	s({ trig = "cot", snippetType = "snippet" },
		{
			t("\\cot\\left("),
			i(1),
			t("\\right)"),
		}
	),
	s({ trig = "arcsin", snippetType = "snippet" },
		{
			t("\\arcsin\\left("),
			i(1),
			t("\\right)"),
		}
	),
	s({ trig = "arccos", snippetType = "snippet" },
		{
			t("\\arccos\\left("),
			i(1),
			t("\\right)"),
		}
	),
	s({ trig = "arctan", snippetType = "snippet" },
		{
			t("\\arctan\\left("),
			i(1),
			t("\\right)"),
		}
	),
	s({ trig = "arccsc", snippetType = "snippet" },
		{
			t("\\arccsc\\left("),
			i(1),
			t("\\right)"),
		}
	),
	s({ trig = "arcsec", snippetType = "snippet" },
		{
			t("\\arcsec\\left("),
			i(1),
			t("\\right)"),
		}
	),
	s({ trig = "arccot", snippetType = "snippet" },
		{
			t("\\arccot\\left("),
			i(1),
			t("\\right)"),
		}
	),
}

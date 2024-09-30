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
	s({ trig = "lim", snippetType = "snippet" },
		{
			t("\\lim_{"),
			i(1),
			t("}"),
		}
	),
	s({ trig = "Lim", snippetType = "snippet" },
		{
			t("\\lim_{"),
			i(1),
			t("}\\left["),
			i(2),
			t("\\right]")
		}
	),
	s({ trig = "df", snippetType = "snippet" },
		{
			t("\\mathrm{d}"),
		}
	),
	s({ trig = "Df", snippetType = "snippet" },
		{
			t("\\,\\mathrm{d}"),
		}
	),
	s({ trig = "dif", snippetType = "snippet" },
		{
			t("\\deriv["),
			i(1),
			t("]"),
		}
	),
	s({ trig = "Dif", snippetType = "snippet" },
		{
			t("\\deriv["),
			i(1),
			t("]\\left["),
			i(2),
			t("\\right]")
		}
	),
	s({ trig = "int", snippetType = "snippet" },
		{
			t("\\int_{"),
			i(1),
			t("}^{"),
			i(2),
			t("}"),
			i(3),
			t("\\,\\mathrm{d}"),
		}
	),
	s({ trig = "Int", snippetType = "snippet" },
		{
			t("\\int_{"),
			i(1),
			t("}^{"),
			i(2),
			t("}\\left("),
			i(3),
			t("\\right)\\mathrm{d}"),
		}
	),
	s({ trig = "iint", snippetType = "snippet" },
		{
			t("\\int "),
			i(1),
			t("\\,\\mathrm{d}"),
		}
	),
	s({ trig = "Iint", snippetType = "snippet" },
		{
			t("\\int\\left("),
			i(1),
			t("\\right)\\mathrm{d}"),
		}
	),
	s({ trig = "sum", snippetType = "snippet" },
		{
			t("\\sum_{"),
			i(1),
			t("}^{"),
			i(2),
			t("}"),
		}
	),
	s({ trig = "Sum", snippetType = "snippet" },
		{
			t("\\sum_{"),
			i(1),
			t("}^{"),
			i(2),
			t("}\\left["),
			i(3),
			t("\\right]"),
		}
	),
	s({ trig = "prod", snippetType = "snippet" },
		{
			t("\\prod_{"),
			i(1),
			t("}^{"),
			i(2),
			t("}"),
		}
	),
	s({ trig = "Prod", snippetType = "snippet" },
		{
			t("\\prod_{"),
			i(1),
			t("}^{"),
			i(2),
			t("}\\left["),
			i(3),
			t("\\right]"),
		}
	),
	s({ trig = "eval", snippetType = "snippet" },
		{
			t("\\left."),
			i(1),
			t("\\right|_{"),
			i(2),
			t("}^{"),
			i(3),
			t("}")
		}
	),
	s({ trig = "Eval", snippetType = "snippet" },
		{
			t("\\left["),
			i(1),
			t("\\right]_{"),
			i(2),
			t("}^{"),
			i(3),
			t("}")
		}
	),
}

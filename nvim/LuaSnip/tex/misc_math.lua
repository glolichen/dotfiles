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
local c = ls.choice_node
ls.add_snippets("tex", {
	s("(", {
		c(1, {
			t("()"),
			t("\\left(\\right)"),
		}),
		i(0),
	}),
}, {
	type = "autosnippets",
	key = "tex_parentheses",
})
return {
	s({ trig = "(", snippetType = "snippet" },
		{
			t("\\left("),
			i(1),
			t("\\right)")
		}
	),
	-- s({ trig = "[", snippetType = "snippet" },
	-- 	{
	-- 		t("\\left["),
	-- 		i(1),
	-- 		t("\\right")
	-- 	}
	-- ),
	s({ trig = "$", snippetType = "snippet" },
		{
			t("\\("),
			i(1),
			t("\\)")
		}
	),
	s({ trig = "ff", snippetType = "snippet" },
		{
			t("\\frac{"),
			i(1),
			t("}{"),
			i(2),
			t("}")
		}
	),
	s({ trig = "rt", snippetType = "snippet" },
		{
			t("\\sqrt{"),
			i(1),
			t("}"),
		}
	),
	s({ trig = "nrt", snippetType = "snippet" },
		{
			t("\\sqrt["),
			i(1),
			t("]{"),
			i(2),
			t("}"),
		}
	),
	s({ trig = "abs", snippetType = "snippet" },
		{
			t("\\left|"),
			i(1),
			t("\\right|"),
		}
	),
	s({ trig = "floor", snippetType = "snippet" },
		{
			t("\\lfloor "),
			i(1),
			t("\\rfloor"),
		}
	),
	s({ trig = "ceil", snippetType = "snippet" },
		{
			t("\\lceil "),
			i(1),
			t("\\rceil"),
		}
	),
	s({ trig = "ln", snippetType = "snippet" },
		{
			t("\\ln\\left("),
			i(1),
			t("\\right)"),
		}
	),
	s({ trig = "log", snippetType = "snippet" },
		{
			t("\\log_{"),
			i(1),
			t("}\\left("),
			i(2),
			t("\\right)"),
		}
	),
};

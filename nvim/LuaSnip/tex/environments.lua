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
	s({ trig = "bit", snippetType = "snippet" },
		{
			t({
				"\\begin{itemize}",
				"    "
			}),
			i(1),
			t({
				"",
				"\\end{itemize}"
			}),
		}
	),
	s({ trig = "bcas", snippetType = "snippet" },
		{
			t({
				"\\begin{cases}",
				"    "
			}),
			i(1),
			t({
				"",
				"\\end{cases}"
			}),
		}
	),
	s({ trig = "beq", snippetType = "snippet" },
		{
			t({
				"\\begin{equation}",
				"    "
			}),
			i(1),
			t({
				"",
				"\\end{equation}"
			}),
		}
	),
	s({ trig = "bseq", snippetType = "snippet" },
		{
			t({
				"\\begin{equation*}",
				"    "
			}),
			i(1),
			t({
				"",
				"\\end{equation*}"
			}),
		}
	),
	s({ trig = "bge", snippetType = "snippet" },
		{
			t({
				"\\begin{gather}",
				"    "
			}),
			i(1),
			t({
				"",
				"\\end{gather}"
			}),
		}
	),
	s({ trig = "bsga", snippetType = "snippet" },
		{
			t({
				"\\begin{gather*}",
				"    "
			}),
			i(1),
			t({
				"",
				"\\end{gather*}"
			}),
		}
	),
	s({ trig = "bal", snippetType = "snippet" },
		{
			t({
				"\\begin{align}",
				"    "
			}),
			i(1),
			t({
				"",
				"\\end{align}"
			}),
		}
	),
	s({ trig = "bsal", snippetType = "snippet" },
		{
			t({
				"\\begin{align*}",
				"    "
			}),
			i(1),
			t({
				"",
				"\\end{align*}"
			}),
		}
	),
	s({ trig = "bald", snippetType = "snippet" },
		{
			t({
				"\\begin{aligned}",
				"    "
			}),
			i(1),
			t({
				"",
				"\\end{aligned}"
			}),
		}
	),
	s({ trig = "balt", snippetType = "snippet" },
		{
			t({
				"$\\begin{aligned}[t]",
				"    "
			}),
			i(1),
			t({
				"",
				"\\end{aligned}$"
			}),
		}
	),
	s({ trig = "bmat", snippetType = "snippet" },
		{
			t({
				"\\begin{bmatrix}",
				"    "
			}),
			i(1),
			t({
				"",
				"\\end{bmatrix}"
			}),
		}
	),
}

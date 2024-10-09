---@diagnostic disable: undefined-global`

return {},{
    s(
        -- Example with regex-pattern instead of wordTrig
        {trig = "([^%a])ff", trigEngine = "pattern", wordTrig = false},
        fmta(
            "<>\\frac{<>}{<>}",
            {
                f(function(_, snip) return snip.captures[1] end),
                i(1),
                i(2),
            }
        )
    ),

    s(
        {trig = "tt"},
        fmta(
            "\\texttt{<>}",
            { i(1) }
        )
    ),

    s(
        {trig = "eq"},
        fmta(
            [[
                \begin{equation*}
                    <>
                \end{equation*}
            ]],
            { i(1) }
        )
    ),

    s(
        {trig = "new"},
        fmta(
            [[
                \begin{<>}
                    <>
                \end{<>}
            ]],
            {
                i(1),
                i(2),
                rep(1),
            }
        ),
        {condition = conds.line_begin}
    ),

    s(
        {trig = "ee"},
        fmta("e^{<>}",
            { i(1) }
        )
    ),

    s(
        {trig = "mm"},
        fmta("$ <> $",
            { i(1) }
        )
    ),

    -- 00 to subscript_0 after letters and closing delimiters
    s(
        {trig = '([%a%)%]%}])00', regTrig = true, wordTrig = false, snippetType="autosnippet"},
        fmta(
            "<>_{<>}",
            {
                f( function(_, snip) return snip.captures[1] end ),
                t("0")
            }
        )
    ),

}

-- .	all characters
-- %d	digits
-- %a	letters (uppercase and lowercase)
-- %w	alphanumeric characters
-- %s	white space characters

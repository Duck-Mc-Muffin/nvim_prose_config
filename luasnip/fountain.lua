---@diagnostic disable: undefined-global`

return {},{

    s(
        {trig = 'prt.'},
        t('PRT ')
    ),


    s(
        {trig = 'cut to:'},
        t('CUT TO:')
    ),

    s(
        {trig = 'int.'},
        fmt('INT. {} - {}\n\n\n', {
            i(1),
            i(2, 'DAY'),
        })
    ),

    s(
        {trig = 'ext.'},
        t('EXT. ')
    ),

    s(
        {trig = 'os.'},
        t('(O.S.)')
    ),

    s(
        {trig = 'vo.'},
        t('(V.O.)')
    ),

}

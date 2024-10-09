let g:pencil#autoformat_config = {
        \   'markdown': {
        \     'black': [
        \       'htmlH[0-9]',
        \       'markdown(Code|H[0-9]|Url|IdDeclaration|Link|Rule|Highlight[A-Za-z0-9]+)',
        \       'markdown(FencedCodeBlock|InlineCode)',
        \       'mkd(Code|Rule|Delimiter|Link|ListItem|IndentCode)',
        \       'mmdTable[A-Za-z0-9]*',
        \     ],
        \     'white': [
        \       'markdown(Code|Link)',
        \     ],
        \   },
        \   'fountain': {
        \     'black': [
        \       'fountainCharacter',
        \       'fountainDialogue',
        \     ],
        \   },
        \ }

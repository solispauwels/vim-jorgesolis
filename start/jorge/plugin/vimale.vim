function ALELSPMappings()
	let l:lsp_found=0
	for l:linter in ale#linter#Get(&filetype) | if !empty(l:linter.lsp) | let l:lsp_found=1 | endif | endfor
	if (l:lsp_found)
        noremenu PopUp.Documentation :ALEDocumentation<cr>
        noremenu PopUp.Find\ references :ALEFindReferences<cr>
        noremenu PopUp.Go\ to\ definition :ALEGoToDefinition -split<cr>
        noremenu PopUp.Go\ to\ type\ definition :ALEGoToTypeDefinition -split<cr>
        noremenu PopUp.ALE\ Hover :ALEHover<cr>

	map <MiddleMouse> :ALEGoToDefinition -split<cr>
	imap <MiddleMouse> <esc>:ALEGoToDefinition -split<cr>i

	map <2-MiddleMouse> :ALEGoToTypeDefinition -split<cr>
	imap <2-MiddleMouse> <esc>:ALEGoToTypeDefinition -split<cr>i

	"nmap <c-s> :ALEFix<cr>
	"imap <c-s> <esc>:ALEFix<cr>i

	"nmap <c-s> :ALEFix<cr>:w<cr>
	"imap <c-s> <esc>:ALEFix<cr>:w<cr>i


	else
		"silent! unmap <buffer> <C-]>
		"silent! unmap <buffer> <C-^>
		"nmap <c-s> :w<cr>
		"imap <c-s> <esc>:w<cr>i
	endif
endfunction

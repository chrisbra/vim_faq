"*vim_faq.vim*
"  Last Change: October 28, 2004
"  Maintainer:  Paul Bolle <pebolle@tiscali.nl>
"  Version:     0.2 for Vim 6.x (tested on 6.2)

" Has this plugin already been loaded?
if exists('loaded_vim_faq')
  finish
endif
let loaded_vim_faq = 1

"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" Function: s:ReturnRestOfLine(pattern) 
"   Search for the first line with {pattern} and return that line without it
" Arguments:
"   pattern: a valid {pat} for substitute ({expr}, {pat}, {sub}, {flags})
" Returns:
"   The first line in which {pattern} was found excluding the pattern or
"   an empty string
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
function! s:ReturnRestOfLine(pattern)
    let s:current_line = line(".")
    let s:current_col = col(".")
    let s:substituted = ""
    let s:line = search(a:pattern)
    if s:line > 0
        let s:gotten = getline(s:line)
        let s:substituted = substitute(s:gotten, a:pattern, "", "")
    endif
      " make sure the cursor is where it was when we called this function
      call cursor (s:current_line, s:current_col)
    return s:substituted
endfunction

"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" Function: s:ReturnSpaces(count) 
"   Return a string of 'count' spaces
"   (I'm pretty sure I only wrote this function because I don't know all
"   tricks available to populate a replace string in ':s///')
" Arguments:
"   count: a number
" Returns:
"   A string of count spaces
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
function! s:ReturnSpaces(count)
    return repeat(' ', a:count)
endfunction

function MakePath(vim_doc_path)
    " Name of the document path based on the system we use:
    if (has("unix"))
        let l:mkdir_cmd  = ':silent !mkdir -p '
    else
        let l:mkdir_cmd  = ':silent !mkdir '
    endif

    if (!(filewritable(a:vim_doc_path) == 2))
        echomsg "Creating doc path: " . a:vim_doc_path
        execute l:mkdir_cmd . a:vim_doc_path
        if (!(filewritable(a:vim_doc_path) == 2))
            " Put a warning:
           echomsg "Unable to open documentation directory"
           echomsg "Type :help add-local-help for more informations."
        return 0
        endif
    endif
endfunction


"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" Function: VimifyAndInstallFaq(vim_faq_textfile, vim_doc_path) 
"   Install vim_faq.txt in documentation.
"   This script will happily overwrite an already installed vim_faq.txt!
" Arguments:
"   vim_faq_textfile: full path to vim_faq.txt
"   vim_doc_path: full path to doc directory, e.g.: /home/pico/.vim/doc
" Return:
"   1 if a Vimified vim_faq.txt is installed, 0 otherwise.
" Note:
"   This script started as rewrite of s:SpellInstallDocumentation from 
"   vimspell.vim. That script uses a smart way to determinate vim_doc_path.
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
function! VimifyAndInstallFaq(vim_faq_textfile, vim_doc_path)
    " Name of the document path based on the system we use:
    if (has("unix"))
        " On UNIX like system, using forward slash:
        let l:slash_char = '/'
        let l:mkdir_cmd  = ':silent !mkdir -p '
    else
        " On M$ system, use backslash. Also mkdir syntax is different.
        " This should only work on W2K and up.
        let l:slash_char = '\'
        let l:mkdir_cmd  = ':silent !mkdir '
    endif


    if (!(filewritable(a:vim_doc_path) == 2))
        echomsg "Creating doc path: " . a:vim_doc_path
        execute l:mkdir_cmd . a:vim_doc_path
        if (!(filewritable(a:vim_doc_path) == 2))
            " Put a warning:
           echomsg "Unable to open documentation directory"
           echomsg "Type :help add-local-help for more informations."
	   return
        endif
    endif


    " Exit if we have problem to access the document directory:
    if !isdirectory(a:vim_doc_path)
        return
    endif

    " Full name of script and documentation file:
    let l:doc_name = fnamemodify(a:vim_faq_textfile, ':t')
    let l:faq_doc_file = a:vim_doc_path . l:slash_char . l:doc_name

    " Prepare window position restoring command:
    if (strlen(@%))
        let l:go_back = 'b ' . bufnr("%")
    else
        let l:go_back = 'enew!'
    endif

    " Create a new buffer & read in the plugin file (me):
    setl nomodeline
    exe 'enew!'
    exe 'r ' . a:vim_faq_textfile

    setl modeline
    let l:buf = bufnr("%")
    setl noswapfile modifiable

    norm gg

    " Here we start to Vimify

    " set tabstop=8
    set ts=8

    " Remove first two lines
    1,2d

    let l:faq_author = s:ReturnRestOfLine ("^Current Maintainer: ")
    let l:faq_updated = s:ReturnRestOfLine ("^Last updated on: ")

    "Insert header
    call append(0, '*vim_faq.txt*	Frequently Asked Questions')
    call append(1, '')
"    call append(2, 'For instructions on installing this file, type >')
"   call append(3, '        :help add-local-help')
"   call append(4, 'inside Vim.')
"   call append(5, '')
    call append(2, 'Last updated on: ' . l:faq_updated)
    call append(3, '')
    call append(4, '                VIM FAQ by: ' . l:faq_author)
    call append(5, '')
    call append(6, 'Frequently Asked Questions                                 *vim-faq* *Vim-FAQ*')

    " make 'helpHyperTextJumps' in index
    %s/^ \{4\}\([0-9]\{1,2\}\.[0-9]\{1,2\}\)\. \(\w\)/|faq-\1| \2/
    " this line is too long. It aligns the Questions at column 13
    %s/^\(|faq-[0-9]\{1,2\}\.[0-9]\{1,2\}|\) \(.\)/\=submatch(1) . 
	\ s:ReturnSpaces(12 - strlen(submatch(1))) . submatch(2)/
    " Align 2nd, 3rd, etc. lines of questions at column 13 too ...
    1,/==/s/^ \{5,\}\(.\)/\t  \1/

    " create 'helpHyperTextEntry' for INDEX (in questions)
    %s/\(\nINDEX\)/\t\t\t\t\t\t\t\t*faq-index*\1/

    " create 'helpHyperTextEntries' in all sections (in questions)
    " This line is waaay too long .... Right llign, but the Entries always
    " start at a tabstop). Note: 78 - strlen("*faq-*) = 72
    1,/^=\+$/s/\(\nSECTION [0-9]\+ - \)\(\w.\+\)$/\=s:ReturnSpaces(72 - 
	\ strlen(submatch(2)) - (72 - strlen(submatch(2))) % 8) . "*faq-" . 
	\ tolower(submatch(2)) . "*" . submatch(0)/

    " replace spaces in newly created 'helpHyperTextEntries'
    g/^ \+\*faq-.*\*$/s/\([^ ]\) /\1-/g

    " create helpExamples with '>' and '<' (in general: blue)
    %s/\(\n\_^$\)\(\(\n \{4\}.*\)\+\)\(\n\_^\)$/ >\1\2\4</

    " RFC I prefer helHyperTextJumps here. What do other people think
    " (Paul Bolle)

    " but remove those helpExamples if these are ':help ...' examples
    %s/>\(\n\_^$\)\(\(\n \{4\}:help.*\)\+\)\(\n^\)<$/\1\2\4/

    " make 'helpHyperTextJumps' from ':help ...' examples
    %s/\(^ \{4\}\):help \(.*\)/\1\|\2\|/

    " and revert all that for a block of three <C-D> examples (in 4.2)
    %s/\(^ \{4\}\)|\(.*<C-D>\)|/\1:help \2/ 
    %s/\(\n^$\)\(\(\n \{4\}:help .*<C-D>\)\+\)\(\n^\)$/ >\1\2\4</

    " another special case in the helpHyperTextJump: '|'"|' didn't work ...
    %s/\(^ \{4\}|'\)"\(|\)/\1quote\2/

    " make 'helpHyperTextEntries' to SECTIONs (in answers), e.g.: *faq-27*
    norm! gg
    /==/,$s/\(\nSECTION \)\([0-9]\{1,2\}\)\( -\)/
	\ \t\t\t\t\t\t\t\t*faq-\2*\1\2\3/

    " make 'helpHyperTextEntries' to answers, e.g. *faq-12.1*
    %s/\(\n\)\([0-9]\{1,2\}\.[0-9]\{1,2\}\)\.\(.\)/
	\ \t\t\t\t\t\t\t\t*faq-\2*\1\2\.\3/

    " Add hyperlinks to references to other questions
    %s/Question:\? \?\(\d\+\.\d\+\)\.\?/& |faq-\1|/

    " Remove (*New*) and (*Updated*), first if on separate line
    %s/^\s\+(\*\(New\|Updated\)\*)\n//e
    " and now for the rest of those ...
    %s/(\*\(New\|Updated\)\*)//e
    
    " don't install *faq* and *FAQ* tags
    "%s/\*\(faq\|FAQ\)\*/\1/g
    " don't tag *always*
    %s/*always[*]/always/g

    " remove a few lines at the end
    $-3,$d

    " remove some double blank lines
    %s/\(^\s*$\n\)\{2,\}\(^==*$\)/\1\2/

    " Add modeline for help doc: the modeline string is mangled intentionally
    " to avoid it be recognized by VIM:
    call append(line('$'), ' v' . 'im:tw=78:ts=8:ft=help:norl:')

    " Save the help document:
    exe 'w! ' . l:faq_doc_file
    exe l:go_back
    exe 'bw ' . l:buf

    " Build help tags:
    "exe 'helptags ' . a:vim_doc_path

    return 1
endfunction

func! MakePODFile(textfile)
    /^INDEX/d
    g/^=\+$/d
    call append(1,['=pod', '', '=head1 DESCRIPTION'])
    /^1.4/,/^1.5/s/^.*:$/=head3 &/
    /^1.4/,/^1.5/s/^\s\s\S.*$/=head4 &/
    %s/^SECTION \d\+ - \(.\+\)$/=head1 \1\r/
    %s/^\d\+\.\d\+\./=head2 &/
    /^Current Maintainer:/s//=head1 AUTHOR\r\r&/
    /^Last updated on:/s//\r&/
    "call append('$', '=cut') Not needed in a pod file
    " Don't make it too wide
    %s/^\s\{4}/ /
    " Generate bold text around help references
    :%s/^\s*\(:help .*\)$/B<\1>\r/
    exe ':saveas! ' a:textfile
endfunc

:com! -bar CreateVimFAQHelp :echo VimifyAndInstallFaq("./vim_faq.txt", "./doc")
:com! -bar CreateVimPODFile :echo MakePODFile("./others/vim_faq.pod")

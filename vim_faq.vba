" Vimball Archiver by Charles E. Campbell, Jr., Ph.D.
UseVimball
finish
plugin/faq_plugin.vim	[[[1
12
" VIM_FAQ - The Vim faq from http://vimdoc.sourceforge.net/
" -------------------------------------------------------------
" Version:  10
" Maintainer:  Yegappan Lakshmanan
" Last Change: 26 October 2010
"
" Script: 
" GetLatestVimScripts: XXX 10 :AutoInstall: faq_plugin.vim
"
"
" empty stub. This plugin contains only of the documentation
" and the GLVS headers for |GLVS|
doc/vim_faq.txt	[[[1
8163
*vim_faq.txt*	Frequently Asked Questions

For instructions on installing this file, type >
	    :help add-local-help
inside Vim.

Last updated on: 26 October 2010

	    VIM REFERENCE MANUAL    by: Yegappan Lakshmanan

Frequently Asked Questions                                 *vim-faq* *Vim-FAQ*

This Vim FAQ is created from the questions and answers posted to the
vim@vim.org user mailing list and the comp.editors newsgroup. There are
several ways to solve a problem in Vim. This FAQ gives one of those several
possibilities. You can explore the other ways using the information and
links given in this FAQ. The credit for the answers in this FAQ goes to
Peppe, Benji, Charles Campbell and numerous others.

TODO:
How do I define a map to accept a count?

Use the @= command to use an expression. For example, >

    nnoremap = @='3l'
<
Now you can specify a count to the '=' command. 

    |complex-repeat|

								*faq-index*
INDEX
                                                *faq-general-information*
SECTION 1 - GENERAL INFORMATION
|faq-1.1|   What is Vim?
|faq-1.2|   Who wrote Vim?
|faq-1.3|   Is Vim compatible with Vi?
|faq-1.4|   What are some of the improvements of Vim over Vi?
|faq-1.5|   Is Vim free?
                                                        *faq-resources*
SECTION 2 - RESOURCES
|faq-2.1|   Where can I learn more about Vim?
|faq-2.2|   Is there a mailing list available?
|faq-2.3|   Is there an archive available for the Vim mailing lists?
|faq-2.4|   Where can I get the Vim user manual in HTML/PDF/PS format?
|faq-2.5|   I have a "xyz" (some) problem with Vim. How do I determine it is a
	    problem with my setup or with Vim?
|faq-2.6|   Where can I report bugs?
|faq-2.7|   Where can the FAQ be found?
|faq-2.8|   What if I don't find an answer in this FAQ?
|faq-2.9|   I have a patch for implementing a Vim feature. Where do I send the
	    patch?
|faq-2.10|  I have a Vim tip or developed a new Vim
	    syntax/indent/filetype/compiler plugin or developed a new script
	    or a colorscheme. Is there a public website where I can upload
	    this?
                                                        *faq-availability*
SECTION 3 - AVAILABILITY
|faq-3.1|   What is the latest version of Vim?
|faq-3.2|   Where can I find the latest version of Vim?
|faq-3.3|   What platforms does it run on?
|faq-3.4|   Where can I download the latest version of the Vim runtime files?
                                                                *faq-help*
SECTION 4 - HELP
|faq-4.1|   How do I use the help files?
|faq-4.2|   How do I search for a keyword in the Vim help files?
|faq-4.3|   I am getting an error message E123, what did I do wrong?
|faq-4.4|   Where can I read about the various modes in Vim?
|faq-4.5|   How do I generate the Vim help tags file after adding a new Vim
	    help file?
|faq-4.6|   Can I use compressed versions of the help files?
                                                        *faq-editing-a-file*
SECTION 5 - EDITING A FILE
|faq-5.1|   How do I load a file in Vim for editing?
|faq-5.2|   How do I save the current file in another name (save as) and edit
	    a new file?
|faq-5.3|   How do I change the current directory to the directory of the
	    current file?
|faq-5.4|   How do I write a file without the line feed (EOL) at the end of
	    the file?
|faq-5.5|   How do I configure Vim to open a file at the last edited location?
|faq-5.6|   When editing a file in Vim, which is being changed by an external
	    application, Vim opens a warning window (like the confirm dialog)
	    each time a change is detected. How do I disable this warning?
|faq-5.7|   How do I edit a file whose name is under the cursor?
|faq-5.8|   How do I reload/re-edit the current file?
|faq-5.9|   How do I autosave a file periodically?
|faq-5.10|  How do I open a file in read-only mode?
|faq-5.11|  How do I open a file for editing without saving the modifications
	    to the current file?
|faq-5.12|  How do I reduce the loading time for very large files in Vim?
                                                *faq-editing-multiple-files*
SECTION 6 - EDITING MULTIPLE FILES
|faq-6.1|   How do I open multiple files at once from within Vim?
|faq-6.2|   How do I switch between multiple files/buffers in Vim?
|faq-6.3|   How do I open several files in Vim, with each file in a separate
	    window/tabpage?
|faq-6.4|   How do I configure Vim to autoload several files at once similar
	    to "work-sets" or "projects"?
|faq-6.5|   Is it possible to open multiple top level windows in a single
	    instance of Vim similar to Nedit or emacs?
|faq-6.6|   How do I browse/explore directories from within Vim?
|faq-6.7|   How do I edit files over a network using ftp/scp/rcp/http?
                                                                *faq-backup*
SECTION 7 - BACKUP
|faq-7.1|   When I edit and save files, Vim creates a file with the same name
	    as the original file and a "~" character at the end. How do I stop
	    Vim from creating this file (or) How do I disable the Vim backup
	    file feature?
|faq-7.2|   When I edit and save files, Vim creates a file with the same name
	    as the original file and a ".un~" extension at the end. How do I
	    stop Vim from creating this file (or) How do I disable the Vim
	    undofile feature.
|faq-7.3|   How do I configure Vim to store all the backup files in a
	    particular directory?
|faq-7.4|   When I save a file with Vim, the file permissions are changed.
	    How do I configure Vim to save a file without changing the file
	    permissions?
                                                                *faq-buffers*
SECTION 8 - BUFFERS
|faq-8.1|   I have made some modifications to a buffer. How do I edit another
	    buffer without saving the modified buffer and also without losing
	    the modifications?
|faq-8.2|   How do I configure Vim to auto-save a modified buffer when
	    switching to another buffer?
|faq-8.3|   How do I replace the buffer in the current window with a blank
	    buffer?
|faq-8.4|   Is there a keyboard shortcut to load a buffer by the buffer
	    number?
|faq-8.5|   How do I open all the current buffers in separate windows?
|faq-8.6|   How do I close (delete) a buffer without exiting Vim?
|faq-8.7|   I have several buffers opened with ":e filename". How do I close
	    one of the buffers without exiting Vim?
|faq-8.8|   When I use the command ":%bd" to delete all the buffers, not all
	    the buffers are deleted. Why?
|faq-8.9|   How do I display the buffer number of the current buffer/file?
|faq-8.10|  How do I delete a buffer without closing the window in which the
	    buffer is displayed?
|faq-8.11|  How do I map the tab key to cycle through and open all the
	    buffers?
                                                                *faq-windows*
SECTION 9 - WINDOWS
|faq-9.1|   What is the difference between a Vim window and a buffer?
|faq-9.2|   How do I increase the width of a Vim window?
|faq-9.3|   How do I zoom into or out of a window?
|faq-9.4|   How do I execute an ex command on all the open buffers or open
	    windows or all the files in the argument list?
                                                                *faq-motion*
SECTION 10 - MOTION
|faq-10.1|  How do I jump to the beginning (first line) or end (last line) of
	    a file?
|faq-10.2|  In insert mode, when I press the <Esc> key to go to command mode,
	    the cursor moves one character to the left (except when the
	    cursor is on the first character of the line). Is it possible to
	    change this behavior to keep the cursor at the same column?
|faq-10.3|  How do I configure Vim to maintain the horizontal cursor position
	    when scrolling with the <Page Up>, <Page Down>, etc keys?
|faq-10.4|  Some lines in a file are more than the screen width and they are
	    all wrapped. When I use the j, k keys to move from one line to
	    the next, the cursor is moved to the next line in the file
	    instead of the next line on the screen. How do I move from one
	    screen line to the next?
|faq-10.5|  What is the definition of a sentence, paragraph and section in
	    Vim?
|faq-10.6|  How do I jump to beginning or end of a sentence, paragraph or a
	    section?
|faq-10.7|  I have lines in a file that extends beyond the right extent of the
	    screen. How do I move the Vim view to the right to see the text
	    off the screen?
|faq-10.8|  How do I scroll two or more buffers simultaneously?
|faq-10.9|  When I use my arrow keys, Vim changes modes, inserts weird
	    characters in my document but doesn't move the cursor properly.
	    What's going on?
|faq-10.10| How do I configure Vim to move the cursor to the end of the
	    previous line, when the left arrow key is pressed and the cursor
	    is currently at the beginning of a line?
|faq-10.11| How do I configure Vim to stay only in insert mode (modeless
	    editing)?
|faq-10.12| How do I display some context lines when scrolling text?
|faq-10.13| How do I go back to previous cursor locations?
                                                        *faq-searching-text*
SECTION 11 - SEARCHING TEXT
|faq-11.1|  After I searched for a text with a pattern, all the matched text
	    stays highlighted. How do I turn off the highlighting
	    temporarily/permanently?
|faq-11.2|  How do I enter a carriage return character in a search pattern?
|faq-11.3|  How do I search for the character ^M?
|faq-11.4|  How can I search/replace characters that display as '~R', '~S',
	    etc.?
|faq-11.5|  How do I highlight all the non-printable characters in a file?
|faq-11.6|  How do I search for whole words in a file?
|faq-11.7|  How do I search for the current word under the cursor?
|faq-11.8|  How do I search for a word without regard to the case (uppercase
	    or lowercase)?
|faq-11.9|  How do I search for words that occur twice consecutively?
|faq-11.10| How do I count the number of times a particular word occurs in a
	    buffer?
|faq-11.11| How do I place the cursor at the end of the matched word when
	    searching for a pattern?
|faq-11.12| How do I search for an empty line?
|faq-11.13| How do I search for a line containing only a single character?
|faq-11.14| How do I search and replace a string in multiple files?
|faq-11.15| I am using the ":s" substitute command in a mapping. When a
	    search for a pattern fails, the map terminates. I would like the
	    map to continue processing the next command, even if the
	    substitute command fails. How do I do this?
|faq-11.16| How do I search for the n-th occurrence of a character in a
	    line?
|faq-11.17| How do I replace a tab (or any other character) with a hard
	    return (newline) character?
|faq-11.18| How do I search for a character by its ASCII value?
|faq-11.19| How do I search for long lines?
|faq-11.20| How do I display all the lines in the current buffer that
	    contain a specified pattern?
|faq-11.21| How do I search for a text string that spans multiple lines?
|faq-11.22| How do I search for a pattern only within a range of lines
	    in a buffer?
|faq-11.23| How do I clear the last searched pattern? 
                                                        *faq-changing-text*
SECTION 12 - CHANGING TEXT
|faq-12.1|  How do I delete all the trailing white space characters (SPACE
	    and TAB) at the end of all the lines in a file?
|faq-12.2|  How do I replace all the occurrences of multiple consecutive
	    space characters to a single space?
|faq-12.3|  How do I reduce a range of empty lines into one line only?
|faq-12.4|  How do I delete all blank lines in a file? How do I remove all
	    the lines containing only space characters?
|faq-12.5|  How do I copy/yank the current word?
|faq-12.6|  How do I yank text from one position to another position within a
	    line, without yanking the entire line?
|faq-12.7|  When I yank some text into a register, how do I append the text
	    to the current contents of the register?
|faq-12.8|  How do I yank a complete sentence that spans over more than one
	    line?
|faq-12.9|  How do I yank all the lines containing a pattern into a buffer?
|faq-12.10| How do I delete all the lines in a file that do not contain a
	    pattern?
|faq-12.11| How do I add a line before each line with "pattern" in it?
|faq-12.12| Is there a way to operate on a line if the previous line
	    contains a particular pattern?
|faq-12.13| How do I execute a command on all the lines containing a
	    pattern?
|faq-12.14| Can I copy the character above the cursor to the current cursor
	    position?
|faq-12.15| How do I insert a blank line above/below the current line
	    without entering insert mode?
|faq-12.16| How do I insert the name of the current file into the current
	    buffer?
|faq-12.17| How do I insert the contents of a Vim register into the current
	    buffer?
|faq-12.18| How do I move the cursor past the end of line and insert some
	    characters at some columns after the end of the line?
|faq-12.19| How to replace the word under the cursor (say: junk) with
	    "foojunkbar" in Vim?
|faq-12.20| How do I replace a particular text in all the files in a
	    directory?
|faq-12.21| I have some numbers in a file. How do I increment or decrement
	    the numbers in the file?
|faq-12.22| How do I reuse the last used search pattern in a ":substitute"
	    command?
|faq-12.23| How do I change the case of a string using the ":substitute"
	    command?
|faq-12.24| How do I enter characters that are not present in the keyboard?
|faq-12.25| Is there a command to remove any or all digraphs?
|faq-12.26| In insert mode, when I press the backspace key, it erases only
	    the characters entered in this instance of insert mode. How do I
	    erase previously entered characters in insert mode using the
	    backspace key?
|faq-12.27| I have a file which has lines longer than 72 characters
	    terminated with "+" and wrapped to the next line. How can I
	    quickly join the lines?
|faq-12.28| How do I paste characterwise yanked text into separate lines?
|faq-12.29| How do I change the case (uppercase, lowercase) of a word or
	    a character or a block of text?
|faq-12.30| How do I enter ASCII characters that are not present in the
	    keyboard?
|faq-12.31| How do I replace non-printable characters in a file?
|faq-12.32| How do I remove duplicate lines from a buffer?
|faq-12.33| How do I prefix all the lines in a file with the corresponding
	    line numbers?
|faq-12.34| How do I exchange (swap) two characters or words or lines?
|faq-12.35| How do I change the characters used as word delimiters?
                                        *faq-completion-in-insert-mode*
SECTION 13 - COMPLETION IN INSERT MODE
|faq-13.1|  How do I complete words or lines in insert mode?
|faq-13.2|  How do I complete file names in insert mode?
|faq-13.3|  I am using CTRL-P/CTRL-N to complete words in insert mode. How do
	    I complete words that occur after the just completed word?
                                                        *faq-text-formatting*
SECTION 14 - TEXT FORMATTING
|faq-14.1|  How do I format a text paragraph so that a new line is inserted
	    at the end of each wrapped line?
|faq-14.2|  How do I format long lines in a file so that each line contains
	    less than 'n' characters?
|faq-14.3|  How do I join short lines to the form a paragraph?
|faq-14.4|  How do I format bulleted and numbered lists?
|faq-14.5|  How do I indent lines in insert mode?
|faq-14.6|  How do I format/indent an entire file?
|faq-14.7|  How do I increase or decrease the indentation of the current
	    line?
|faq-14.8|  How do I indent a block/group of lines?
|faq-14.9|  When I indent lines using the > or < key, the standard 8-tabstops
	    are used instead of the current 'tabstop' setting. Why?
|faq-14.10| How do I turn off the automatic indentation of text?
|faq-14.11| How do I configure Vim to automatically set the 'textwidth'
	    option to a particular value when I edit mails?
|faq-14.12| Is there a way to make Vim auto-magically break lines?
|faq-14.13| I am seeing a lot of ^M symbols in my file. I tried setting the
	    'fileformat' option to 'dos' and then 'unix' and then 'mac'.
	    None of these helped. How can I hide these symbols?
|faq-14.14| When I paste some text into a Vim buffer from another
	    application, the alignment (indentation) of the new text is
	    messed up. How do I fix this?
|faq-14.15| When there is a very long wrapped line (wrap is "on") and a line
	    doesn't fit entirely on the screen it is not displayed at all.
	    There are blank lines beginning with '@' symbol instead of
	    wrapped line. If I scroll the screen to fit the line the '@'
	    symbols disappear and the line is displayed again. What Vim
	    setting control this behavior?
|faq-14.16| How do I convert all the tab characters in a file to space
	    characters?
|faq-14.17| What Vim options can I use to edit text that will later go to a
	    word processor?
|faq-14.18| How do I join lines without adding or removing any space
	    characters?
                                                        *faq-visual-mode*
SECTION 15 - VISUAL MODE
|faq-15.1|  How do I do rectangular block copying?
|faq-15.2|  How do I delete or change a column of text in a file?
|faq-15.3|  How do I apply an ex-command on a set of visually selected lines?
|faq-15.4|  How do I execute an ex command on a column of text selected in
	    Visual block mode?
|faq-15.5|  How do I select the entire file in visual mode?
|faq-15.6|  When I visually select a set of lines and press the > key to
	    indent the selected lines, the visual mode ends. How can I
	    reselect the region for further operation?  (or) How do I
	    re-select the last selected visual area again?
|faq-15.7|  How do I jump to the beginning/end of a visually selected region?
|faq-15.8|  When I select text with mouse and then press : to enter an ex
	    command, the selected text is replaced with the : character. How
	    do I execute an ex command on a text selected using the mouse
	    similar to the text selected using the visual mode?
|faq-15.9|  When I select a block of text using the mouse, Vim goes into
	    selection mode instead of Visual mode. Why?
                                                *faq-command-line-mode*
SECTION 16 - COMMAND-LINE MODE
|faq-16.1|  How do I use the name of the current file in the command mode or
	    an ex command line?
|faq-16.2|  How do I edit the text in the Vim command-line effectively?
|faq-16.3|  How do I switch from Vi mode to Ex mode?
|faq-16.4|  How do I copy the output from an ex-command into a buffer?
|faq-16.5|  When I press the tab key to complete the name of a file in the
	    command mode, if there are more than one matching file names,
	    then Vim completes the first matching file name and displays a
	    list of all matching filenames. How do I configure Vim to only
	    display the list of all the matching filenames and not complete
	    the first one?
|faq-16.6|  How do I copy text from a buffer to the command line and from the
	    command line to a buffer?
|faq-16.7|  How do I put a command onto the command history without executing
	    it?
|faq-16.8|  How do I increase the height of the command-line?
                                                                *faq-viminfo*
SECTION 17 - VIMINFO
|faq-17.1|  When I invoke Vim, I get error messages about illegal characters
	    in the viminfo file. What should I do to get rid of these
	    messages?
|faq-17.2|  How do I disable the viminfo feature?
|faq-17.3|  How do I save and use Vim marks across Vim sessions?
                                                        *faq-remote-editing*
SECTION 18 - REMOTE EDITING
|faq-18.1|  How do I open a file with existing instance of gvim? What
	    happened to the Vim 5.x OpenWithVim.exe and SendToVim.exe files?
|faq-18.2|  How do I send a command to a Vim server to write all buffers to
	    disk?
|faq-18.3|  Where can I get the documentation about the Vim remote server
	    functionality?
                                                                *faq-options*
SECTION 19 - OPTIONS
|faq-19.1|  How do I configure Vim in a simple way?
|faq-19.2|  How do I toggle the value of an option?
|faq-19.3|  How do I set an option that affects only the current
	    buffer/window?
|faq-19.4|  How do I use space characters for a Vim option value?
|faq-19.5|  Can I add (embed) Vim option settings to the contents of a file?
|faq-19.6|  How do I display the line numbers of all the lines in a file?
|faq-19.7|  How do I change the width of the line numbers displayed using the
	    "number" option?
|faq-19.8|  How do I display (view) all the invisible characters like space,
	    tabs and newlines in a file?
|faq-19.9|  How do I configure Vim to always display the current line and
	    column number?
|faq-19.10| How do I display the current Vim mode?
|faq-19.11| How do I configure Vim to show pending/partial commands on the
	    status line?
|faq-19.12| How do I configure the Vim status line to display different
	    settings/values?
|faq-19.13| How do I configure Vim to display status line always?
|faq-19.14| How do I make a Vim setting persistent across different Vim
	    invocations/instances/sessions?
|faq-19.15| Why do I hear a beep (why does my window flash) about 1 second
	    after I hit the Escape key?
|faq-19.16| How do I make the 'c' and 's' commands display a '$' instead of
	    deleting the characters I'm changing?
|faq-19.17| How do I remove more than one flag using a single ":set" command
	    from a Vim option?
                                                        *faq-mapping-keys*
SECTION 20 - MAPPING KEYS
|faq-20.1|  How do I know what a key is mapped to?
|faq-20.2|  How do I list all the user-defined key mappings?
|faq-20.3|  How do I unmap a key?
|faq-20.4|  I am not able to create a mapping for the <xxx> key. What is
	    wrong?
|faq-20.5|  Why does mapping the <C-...> key not work?
|faq-20.6|  How do I map the numeric keypad keys?
|faq-20.7|  How do I create a mapping that works only in visual mode?
|faq-20.8|  How do I create a mapping that works only in normal and operator
	    pending mode (but not in visual mode)?
|faq-20.9|  In a Vim script, how do I know which keys to use for my mappings,
	    so that the mapped key will not collide with an already used key?
|faq-20.10| How do I map the escape key?
|faq-20.11| How do I map a key to perform nothing?
|faq-20.12| I want to use the Tab key to indent a block of text and
	    Shift-Tab key to unindent a block of text. How do I map the keys
	    to do this?  This behavior is similar to textpad, visual studio,
	    etc.
|faq-20.13| In my mappings the special characters like <CR> are not
	    recognized. How can I configure Vim to recognize special
	    characters?
|faq-20.14| How do I use the '|' to separate multiple commands in a map?
|faq-20.15| If I have a mapping/abbreviation whose ending is the beginning of
	    another mapping/abbreviation, how do I keep the first from
	    expanding into the second one?
|faq-20.16| Why does it take a second or more for Vim to process a key,
	    sometimes when I press a key?
|faq-20.17| How do I map a key to run an external command using a visually
	    selected text?
|faq-20.18| How do I map the Ctrl-I key while still retaining the
	    functionality of the <Tab> key?
                                                        *faq-abbreviations*
SECTION 21 - ABBREVIATIONS
|faq-21.1|  How do I auto correct misspelled words?
|faq-21.2|  How do I create multi-line abbreviations?
|faq-21.3|  When my abbreviations are expanded, an additional space character
	    is added at the end of the expanded text. How do I avoid this
	    character?
|faq-21.4|  How do I insert the current date/time stamp into the file?
|faq-21.5|  How do I prevent an abbreviation from expanding in insert mode?
                                                *faq-record-and-playback*
SECTION 22 - RECORD AND PLAYBACK
|faq-22.1|  How do I repeat an editing operation (insertion, deletion, paste,
	    etc)?
|faq-22.2|  How I record and repeat a set of key sequences?
|faq-22.3|  How do I edit/modify a recorded set of key sequences?
|faq-22.4|  How do I write recorded key sequences to a file?
|faq-22.5|  I am using register 0 to record my key sequences (i.e. q0 ....
	    q). In the recorded key sequences, I am yanking some text.  After
	    the first replay of the recorded key sequence, I am no longer
	    able to play it back.
                                                        *faq-autocommands*
SECTION 23 - AUTOCOMMANDS
|faq-23.1|  How do I execute a command when I try to modify a read-only file?
|faq-23.2|  How do I execute a command every time when entering a buffer?
|faq-23.3|  How do I execute a command every time when entering a window?
|faq-23.4|  From an autocmd, how can I determine the name of the file or the
	    buffer number for which the autocommand is executed?
|faq-23.5|  How do I automatically save all the changed buffers whenever Vim
	    loses focus?
|faq-23.6|  How do I execute/run a function when Vim exits to do some
	    cleanup?
                                                        *faq-syntax-highlight*
SECTION 24 - SYNTAX HIGHLIGHT
|faq-24.1|  How do I turn off/on syntax highlighting?
|faq-24.2|  How do I change the background and foreground colors used by Vim?
|faq-24.3|  How do I change the highlight colors to suit a dark/light
	    background?
|faq-24.4|  How do I change the color of the line numbers displayed when the
	    ":set number" command is used?
|faq-24.5|  How do I change the background color used for a Visually selected
	    block?
|faq-24.6|  How do I highlight the special characters (tabs, trailing spaces,
	    end of line, etc) displayed by the 'list' option?
|faq-24.7|  How do I specify a colorscheme in my .vimrc/.gvimrc file, so that
	    Vim uses the specified colorscheme everytime?
|faq-24.8|  Vim syntax highlighting is broken. When I am editing a file, some
	    parts of the file is not syntax highlighted or syntax highlighted
	    incorrectly.
|faq-24.9|  Is there a built-in function to syntax-highlight the
	    corresponding matching bracket?
|faq-24.10| How do I turn off the C comment syntax highlighting?
|faq-24.11| How do I add my own syntax extensions to the standard syntax
	    files supplied with Vim?
|faq-24.12| How do I replace a standard syntax file that comes with the Vim
	    distribution with my own syntax file?
|faq-24.13| How do I highlight all the characters after a particular column?
|faq-24.14| How do I convert a source file (.c, .h, etc) with the Vim syntax
	    highlighting into a HTML file?
|faq-24.15| How do I list the definition of all the current highlight
	    groups?
                                                *faq-vim-script-writing*
SECTION 25 - VIM SCRIPT WRITING
|faq-25.1|  How do I list the names of all the scripts sourced by Vim?
|faq-25.2|  How do I debug Vim scripts?
|faq-25.3|  How do I locate the script/plugin which sets a Vim option?
|faq-25.4|  I am getting some error/informational messages from Vim (possibly
	    when running a script), the messages are cleared immediately. How
	    do I display the messages again?
|faq-25.5|  How do I save and restore a plugin specific information across
	    Vim invocations?
|faq-25.6|  How do I start insert mode from a Vim function?
|faq-25.7|  How do I change the cursor position from within a Vim function?
|faq-25.8|  How do I check the value of an environment variable in the .vimrc
	    file?
|faq-25.9|  How do I check whether an environment variable is set or not from
	    a Vim function?
|faq-25.10| How do I call/use the Vim built-in functions?
|faq-25.11| I am using some normal mode commands in my Vim script. How do I
	    avoid using the user-defined mappings for these normal mode
	    commands and use the standard Vim functionality for these normal
	    mode commands?
|faq-25.12| How do I get a visually selected text into a Vim variable or
	    register?
|faq-25.13| I have some text in a Vim variable 'myvar'. I would like to use
	    this variable in a ":s" substitute command to replace a text
	    'mytext'. How do I do this?
|faq-25.14| A Vim variable (bno) contains a buffer number. How do I use this
	    variable to open the corresponding buffer?
|faq-25.15| How do I store the value of a Vim option into a Vim variable?
|faq-25.16| I have copied and inserted some text into a buffer from a Vim
	    function. How do I indent the inserted text from the Vim
	    function?
|faq-25.17| How do I get the character under the cursor from a Vim script?
|faq-25.18| How do I get the name of the current file without the extension?
|faq-25.19| How do I get the basename of the current file?
|faq-25.20| How do I get the output from a Vim function into the current
	    buffer?
|faq-25.21| How do I call external programs from a Vim function?
|faq-25.22| How do I get the return status of a program executed using the
	    ":!" command?
|faq-25.23| How do I determine whether the current buffer is modified or
	    not?
|faq-25.24| I would like to use the carriage return character in a normal
	    command from a Vim script. How do I specify the carriage return
	    character?
|faq-25.25| How do I split long lines in a Vim script?
|faq-25.26| When I try to "execute" my function using the "execute 'echo
	    Myfunc()'" command, the cursor is moved to the top of the
	    current buffer.  Why?
|faq-25.27| How do I source/execute the contents of a register?
|faq-25.28| After calling a Vim function or a mapping, when I press the 'u'
	    key to undo the last change, Vim undoes all the changes made by
	    the mapping/function. Why?
|faq-25.29| How can I call a function defined with s: (script local
	    function) from another script/plugin?
|faq-25.30| Is it possible to un-source a sourced script? In otherwords,
	    reverse all the commands executed by sourcing a script.
                                                                *faq-plugins*
SECTION 26 - PLUGINS
|faq-26.1|  How do I set different options for different types of files?
|faq-26.2|  I have downloaded a Vim plugin or a syntax file or a indent file,
	    or a color scheme or a filetype plugin from the web. Where should
	    I copy these files so that Vim will find them?
|faq-26.3|  How do I extend an existing filetype plugin?
|faq-26.4|  How do I turn off loading the Vim plugins?
|faq-26.5|  How do I turn on/off loading the filetype plugins?
|faq-26.6|  How do I override settings made in a file type plugin in the
	    global ftplugin directory for all the file types?
|faq-26.7|  How do I disable the Vim directory browser plugin?
|faq-26.8|  How do I set the filetype option for files with names matching a
	    particular pattern or depending on the file extension?
                                                *faq-editing-program-files*
SECTION 27 - EDITING PROGRAM FILES
|faq-27.1|  How do I enable automatic indentation for C/C++ files?
|faq-27.2|  How do I configure the indentation used for C/C++ files?
|faq-27.3|  How do I turn off the automatic indentation feature?
|faq-27.4|  How do I change the number of space characters used for the
	    automatic indentation?
|faq-27.5|  I am editing a C program using Vim. How do I display the
	    definition of a macro or a variable?
|faq-27.6|  I am editing a C program using Vim. How do I jump to the
	    beginning or end of a code block from within the block?
|faq-27.7|  When editing C++ files and when inserting new lines above or
	    below a comment (//) line, Vim automatically inserts the C++
	    comment character (//) at the beginning of the line. How do I
	    disable this? 
|faq-27.8|  How do I add the comment character '#' to a set of lines at the
	    beginning of each line?
|faq-27.9|  How do I edit a header file with the same name as the
	    corresponding C source file?
|faq-27.10| How do I automatically insert comment leaders while typing
	    comments?
                                                                *faq-quickfix*
SECTION 28 - QUICKFIX
|faq-28.1|  How do I build programs from Vim?
|faq-28.2|  When I run the make command in Vim I get the errors listed as the
	    compiler compiles the program. When it finishes this list
	    disappears and I have to use the  :clist command to see the error
	    message again. Is there any other way to see these error
	    messages?
                                                                *faq-folding*
SECTION 29 - FOLDING
|faq-29.1|  How do I extend the Vim folding support?
|faq-29.2|  When I enable folding by setting the 'foldmethod' option, all the
	    folds are closed. How do I prevent this?
|faq-29.3|  How do I control how many folds will be opened when I start
	    editing a file?
|faq-29.4|  How do I open and close folds using the mouse?
|faq-29.5|  How do I change the text displayed for a closed fold?
|faq-29.6|  How do I store and restore manually created folds across
	    different Vim invocations?
                                        *faq-vim-with-external-applications*
SECTION 30 - VIM WITH EXTERNAL APPLICATIONS
|faq-30.1|  Can I run a shell inside a Vim window?
|faq-30.2|  How do I pass the word under the cursor to an external command?
|faq-30.3|  How do I get the output of a shell command into a Vim buffer?
|faq-30.4|  How do I pipe the contents of the current buffer to an external
	    command and replace the contents of the buffer with the output
	    from the command?
|faq-30.5|  How do I sort a section of my file?
|faq-30.6|  How do I use Vim as a pager?
|faq-30.7|  How do I view Unix man pages from inside Vim?
|faq-30.8|  How do I change the diff command used by the Vim diff support?
|faq-30.9|  How do I use the Vim diff mode without folding?
                                                                *faq-gui-vim*
SECTION 31 - GUI VIM
|faq-31.1|  How do I create buffer specific menus?
|faq-31.2|  How do I change the font used by GUI Vim?
|faq-31.3|  When starting GUI Vim, how do I specify the location of the GVIM
	    window?
|faq-31.4|  How do I add a horizontal scrollbar in GVim?
|faq-31.5|  How do I make the scrollbar appear in the left side by default?
|faq-31.6|  How do I remove the Vim menubar?
|faq-31.7|  I am using GUI Vim. When I press the ALT key and a letter, the
	    menu starting with that letter is selected. I don't want this
	    behavior as I want to map the ALT-<key> combination. How do I do
	    this?
|faq-31.8|  Is it possible to scroll the text by dragging the scrollbar so
	    that the cursor stays in the original location?
|faq-31.9|  How do I get gvim to start browsing files in a particular
	    directory when using the ":browse" command?
|faq-31.10| For some questions, like when a file is changed outside of Vim,
	    Vim displays a GUI dialog box. How do I replace this GUI dialog
	    box with a console dialog box?
|faq-31.11| I am trying to use GUI Vim as the editor for my xxx application.
	    When the xxx application launches GUI Vim to edit a file, the
	    control immediately returns to the xxx application. How do I
	    start GUI Vim, so that the control returns to the xxx
	    application only after I quit Vim?
|faq-31.12| Why does the "Select Font" dialog doesn't show all the fonts
	    installed in my system?
|faq-31.13| How do I use the mouse in Vim command-line mode?
|faq-31.14| When I use the middle mouse button to scroll text, it pastes the
	    last copied text. How do I disable this behavior?
|faq-31.15| How do I change the location and size of a GUI Vim window?
                                                        *faq-vim-on-unix*
SECTION 32 - VIM ON UNIX
|faq-32.1|  I am running Vim in a xterm. When I press the CTRL-S key, Vim
	    freezes. What should I do now?
|faq-32.2|  I am seeing weird screen update problems in Vim. What can I do to
	    solve this screen/display update problems?
|faq-32.3|  I am using the terminal/console version of Vim. In insertmode,
	    When I press the backspace key, the character before the cursor
	    is not erased. How do I configure Vim to do this?
|faq-32.4|  I am using Vim in a xterm. When I quit Vim, the screen contents
	    are restored back to the original contents. How do I disable
	    this?
|faq-32.5|  When I start Vim, it takes quite a few seconds to start. How do I
	    minimize the startup time?
|faq-32.6|  How can I make the cursor in gvim in unix stop blinking?
|faq-32.7|  How do I change the menu font on GTK Vim?
|faq-32.8|  How do I prevent <Ctrl-Z> from suspending Vim?
|faq-32.9|  When I kill the xterm running Vim, the Vim process continues to
	    run and takes up a lot of CPU (99%) time. Why is this happening?
|faq-32.10| How do I get the Vim syntax highlighting to work in a Unix
	    terminal?
                                                *faq-vim-on-ms-windows*
SECTION 33 - VIM ON MS-WINDOWS
|faq-33.1|  In MS-Windows, CTRL-V doesn't start the blockwise visual mode.
	    What happened?
|faq-33.2|  When I press the CTRL-Y key, it acts like the CTRL-R key. How do
	    I configure Vim to treat CTRL-Y as CTRL-Y?
|faq-33.3|  How do I start GUI Vim in a maximized window always?
|faq-33.4|  After doing some editing operations, Vim freezes. The cursor
	    becomes an empty rectangle. I am not able enter any characters.
	    What is happening?
|faq-33.5|  I am using Windows XP, the display speed of maximized GVim is
	    very slow. What can I do to speed the display updates?
|faq-33.6|  What are the recommended settings for using Vim with cygwin?
|faq-33.7|  I am trying to use GNU diff with Vim diff mode. When I run the
	    diff from command line, it works. When I try to use the diff with
	    Vim it doesn't work. What should I do now?
|faq-33.8|  Is it possible to use Vim as an external editor for MS-Windows
	    Outlook email client?
|faq-33.9|  I am using Vim to edit HTML files. How do I start internet
	    explorer with the current file to preview the HTML file?
|faq-33.10| I would like to use Vim with Microsoft Visual Studio. How do I
	    do this?
|faq-33.11| Where do I place the _vimrc and _gvimrc files?
|faq-33.12| Everytime I save a file, Vim warns about the file being changed
	    outside of Vim. Why?
                                                                *faq-printing*
SECTION 34 - PRINTING
|faq-34.1|  How do I print a file along with line numbers for all the lines?
|faq-34.2|  How do I print a file with the Vim syntax highlighting colors?
                                                *faq-building-vim-from-source*
SECTION 35 - BUILDING VIM FROM SOURCE
|faq-35.1|  How do I build Vim from the sources on a Unix system?
|faq-35.2|  How do I install Vim in my home directory or a directory other
	    than the default installation directory in Unix?
|faq-35.3|  How do I build Vim from the sources on a MS-Windows system?
|faq-35.4|  The Vim help, syntax, indent files are missing from my Vim
	    installation. How do I install these files?
|faq-35.5|  I have built Vim from the source and installed the Vim package
	    using "make install". Do I need to keep the Vim source directory?
|faq-35.6|  How do I determine the Vim features which are enabled at compile
	    time?
|faq-35.7|  Can I build Vim without the GUI support?
|faq-35.8|  When building Vim on a Unix system, I am getting "undefined
	    reference to term_set_winsize' error. How do I resolve this
	    error?
|faq-35.9|  Vim configure keeps complaining about the lack of gtk-config
	    while trying to use GTK 2.03. This is correct, since in GTK 2
	    they moved to using the generic pkg-config. I can get pkg-config
	    to list the various includes and libs for gtk, but for some
	    reason the configure script still isn't picking this up.
                                                                *faq-various*
SECTION 36 - VARIOUS
|faq-36.1|  How do I edit binary files with Vim?
|faq-36.2|  How do I disable the visual error flash and the error beep?
|faq-36.3|  How do I display the ascii value of a character displayed in a
	    buffer?
|faq-36.4|  Can I use zero as a count for a Vim command?
|faq-36.5|  How do I disable the Vim welcome screen?
|faq-36.6|  How do I avoid the "hit enter to continue" prompt?
|faq-36.7|  How do I invoke Vim from command line to run a group of commands
	    on a group of files?
|faq-36.8|  How do I use a normal mode command from insert mode without
	    leaving the insert mode?
|faq-36.9|  How do I start Vim in insert mode?
|faq-36.10| How do I use Copy and Paste with Vim?
                                                                *faq-unicode*
SECTION 37 - UNICODE
|faq-37.1|  Is it possible to create Unicode files using Vim?
|faq-37.2|  Which Vim settings are particularly important for editing Unicode
	    files?
|faq-37.3|  What is the 'encoding' option?
|faq-37.4|  How does Vim name the various Unicode encodings?
|faq-37.5|  How does Vim specify the presence or absence of a byte-order
	    mark?
|faq-37.6|  What is the 'fileencoding' option?
|faq-37.7|  What is the 'fileencodings' option?
|faq-37.8|  What is the 'termencoding' option?
|faq-37.9|  What is the 'bomb' option?
|faq-37.10| Where can I find an example of a typical use of all these
	    options?
|faq-37.11| How can I insert Unicode characters into a file using Vim?
|faq-37.12| How can I know which digraphs are defined and for which
	    characters?

=============================================================================
 								*faq-1*
SECTION 1 - GENERAL INFORMATION

 								*faq-1.1*
1.1. What is Vim?

Vim stands for Vi IMproved. It used to be Vi IMitation, but there are so
many improvements that a name change was appropriate. Vim is a text editor
which includes almost all the commands from the Unix program "Vi" and a lot
of new ones. All commands can be given with the keyboard. This has the
advantage that you can keep your fingers on the keyboard and your eyes on
the screen. For those who want it, there is mouse support and a GUI version
with scrollbars and menus.

Vim is an editor, not a word processor. A word processor is used mainly to
do layout of text. This means positioning it, changing the way it appears
on output. More often than not, the final document is meant to be printed
or typeset or what have you, in order to present it in a pleasing manner to
others. Examples of word processors are Microsoft Word, WordPerfect,
FrameMaker, and OpenOffice Writer.

An editor is simply for entering text. Any typesetting or laying out of the
document is secondary. With an editor, one's main concern is entering text,
not making the text look good. Examples of editors other than Vim and Vi
are Emacs, Crisp, Brief, TextMate and xedit.  And Notepad.

For more information, read 

    |intro|

 								*faq-1.2*
1.2. Who wrote Vim?

Most of Vim was written by Bram Moolenar, with contributions from too many
people to mention here. See ":h credits" for a complete list.

Vim is based on Stevie, worked on by Tim Thompson, Tony Andrews and G.R.
(Fred) Walter.

For more information, read 

    |author|

 								*faq-1.3*
1.3. Is Vim compatible with Vi?

Yes. Vim is very much compatible with Vi.  You can use the "-C"
command-line flag to start Vim in Vi compatible mode: >

    $ vim -C
<
You can also use: >

    $ vim -u NONE
<
You can also set the 'compatible' option to enable Vi compatibility: >

    :set compatible
<
For more information, read 

    |-C|
    |'compatible'|
    |compatible-default|

 								*faq-1.4*
1.4. What are some of the improvements of Vim over Vi?

A short summary of the improvements of Vim over vi is listed below.  The
list shows that Vim is a thoroughly modern and feature-packed editor.
Standard features of modern editors are implemented, and there is an equal
emphasis on general power-user features and features for programmers.

Features to modernise Vi:

  Multi-level undo
     Allows you to set the number of times you can undo your changes in a
     file buffer. You can also redo an undone change.
  Tabs, Multiple windows and buffers
     Each file can be displayed in its own window. You can move easily from
     one window to another. Each file opened during a Vim session also has
     an associated buffer and you can easily jump from one to the other.
     Also like any modern GUI, Vim supports opening several files in tabs.
  Flexible insert mode
     Vim allows you to use the arrow keys while in insert mode to move
     around in the file. No more hitting <Esc>, moving around, then hitting
     `i' or `a'.
  Macros
     Vim has a facility which allows you to record a sequence of typed
     characters and repeat them any number of times.
  Visual mode
     You can highlight sections of text and execute operations on this
     section of text only.
  Block operators
     Allow selection and highlighting of rectangular blocks of text in
     order do execute specific operations on them.
  Online help system
     You can easily find help on any aspect of using Vim. Help is displayed
     in its own window.
  Command-line editing and history
     History allows you to use the arrow keys to repeat or search for a
     command that has already been typed. Allows you to match the beginning
     of a command with the beginning of another similar command in the
     history buffer. You can also edit a command to correct typos or change
     a few values.
  Command line completion.
     Using the <Tab> key, you can complete commands, options, filenames,
     etc. as needed.
  Horizontal scrolling.
     Long lines can be scrolled horizontally (with or without the GUI).
  Unicode and internationalization improvements.
     Vim is able to edit files in unicode encoding and uses internally an
     utf-8 encoding. Additionally Vim can display text right to left oriented.

Advanced user features:

  Text formatting.
     With two keystrokes, you can format large sections of text, without
     the use of external programs.
  Completion in Insert mode
     Vim provides several different possibilities to complete your text. 
     For example Vim can complete words while you are typing, by matching
     the current word with other similar words in the file.
  Jump tags
     Just like in an internet browser, you can jump back to previous parts
     of the text you were editing, and then forward again.  Your brain is
     thus free to edit instead of navigate.
  Automatic commands
     Commands automatically executed when reading or writing a file,
     jumping to another buffer, etc.
  Viminfo
     Allows storing of the command line history, marks and registers in a
     file to be read on startup.  Therefore, you can recall old search
     patterns, macros, etc., in a new Vim session.
  Mouse support
     The mouse is supported in an xterm and for MS-DOS. It can be used to
     position the cursor, select the visual area, paste a register, etc.
  Graphical User Interface (GUI)
     There are several different graphical user interfaces available. 
     Also, it's very easy to add your own menus.  Of course, console vim is
     still supported, and very widely used.
  Scripting language
     Vim has a powerful scripting language so new commands can be created.
     You can also use Perl, Python, TCL and Ruby to achieve the same thing!
  Plugins
     Extra functionality implemented via vim commands (regular commands or
     the scripting language) that is automatically loaded on startup.
     Examples: file explorer, network editing.  More are being developed
     and shared on VimOnline all the time.
  Syntax highlighting for many programming languages
     Syntax highlighting for hundreds of programming languages is
     supported. Support for others can be added.
  Extended regular expressions
     Vim supports extended regular expressions which are similar in
     functionality to that of perl regular expressions.
  Integrated Spell checking
     Spell checking has been integrated into Vim 
  Diff mode
     Vim can highlight the differences between two, three or four files.
     Identical lines will be folded away and hidden.
  Encryption using the blowfish algorithm
     Vim allows to encrypt your files using the symmetric block cipher
     blowfish as well as the swap file.
  Extensive customizable
     Vim can be tuned and customized to work like you want by setting
     options.  You can define your own commands, macros and even plugins
     to extend its capabilities

Programming performance features:

  Edit-compile-edit speedup
     You can compile within Vim and automatically jump to the location of
     errors in the source code.
  Indenting for many programming languages
     C, C++, Java, Perl, XML and many other languages can be automatically
     indented by vim while you type.  Support for others can be added.
  Searching for words in include files
     Vim allows you to search for a match of the word under the cursor in
     the current and included files.
  Advance text objects
     Instantly select, or delete, or copy, or indent, or format, or change
     case, or ... to all the text between ( and ), or { and }, or < and >,
     or [ and ].  Or a word, sentence, or paragraph.  Very powerful.
  Folding
     Certain parts of the text can be "folded" away.  The best example is
     the body of a function.  You can get an overview of the code, and then
     open the fold of the function whose detail you need to see.
  ctags and cscope integration
     Using these two powerful programs, you can jump to a definition of a
     function from a calling instance of it, and use other tricks to
     navigate source code.
  Integration of several programming languages
     If you find the internal scripting language not powerful enough, you
     can extend Vim using Lua, Ruby, Tcl, Perl and Python 2 and 3.

For more information, read 

    |vi-differences|

 								*faq-1.5*
1.5. Is Vim free?

Vim is Charityware. There are no restrictions on using or copying Vim, but
the author encourages you to make a donation to charity. A document
explaining how to do so is included in the distribution.

For more information, read 

    |copyright|

=============================================================================
 								*faq-2*
SECTION 2 - RESOURCES

 								*faq-2.1*
2.1. Where can I learn more about Vim?

You can post your Vim questions to the vim@vim.org mailing list.  You can
post your Vim development related questions to the vim-dev@vim.org mailing
list. Vim does not have a newsgroup of its own. But the appropriate
newsgroup to post to is comp.editors.

"VimOnline" is a web page that serves as a de facto homepage for vim,
although the main purpose of it is to gather tips and scripts from
everywhere.  Get involved!  The URL is vim.sourceforge.net or vim.sf.net.

Finally, read the Vi FAQ: >

    http://www.faqs.org/faqs/editor-faq/vi/part1/index.html
<
For more information, read 

    |mail-list|
    |internet|

 								*faq-2.2*
2.2. Is there a mailing list available?

There are several: >

    NAME              DESCRIPTION
<
    vim-announce      Announcements of new releases
    vim               General discussion
    vim-dev           Patches, bug reports, development discussions
    vim-mac           Macintosh discussion
    vim-fr            General discussion in French
    vim-multibyte     Multibyte development issues
    vim-vms           Development on VMS

Of these, only vim and vim-dev are of general interest.  vim-announce is
read-only to most people, and its messages are sent to the other lists as
well.  The remaining four are very low volume.

To subscribe:   send an email to <NAME>-subscribe@vim.org
To unsubscribe: send an email to <NAME>-unsubscribe@vim.org
To get help:    send an email to <NAME>-help@vim.org

 								*faq-2.3*
2.3. Is there an archive available for the Vim mailing lists?

Yes.  Visit http://www.yahoogroups.com/list/<name>, where name is one of:
vimannounce, vim, vimdev, vim-fr, vim-mac, vim-multibyte, vim-vms.

Alternatively, visit www.gmane.org to find out about GMANE, which allows
you to access the mailing lists as though they were newsgroups.  This
offers some convenience to those who wish to browse the history or casually
observe the current threads.

 								*faq-2.4*
2.4. Where can I get the Vim user manual in HTML/PDF/PS format?

You can download the HTML/PDF/PS format of the Vim user manual from: >

    http://vimdoc.sourceforge.net/
<
 								*faq-2.5*
2.5. I have a "xyz" (some) problem with Vim. How do I determine it is a
     problem with my setup or with Vim?

First, you have to determine that the problem is not with your .vimrc or
.gvimrc or system vimrc or your personal plugin files or in any of your
setup files. To do this, use >

    $ vim -N -u NONE -U NONE
<
This will start Vim in 'nocompatible" mode and will not source your
personal .vimrc and .gvimrc files. It will also not load your personal
plugins. In this invocation of Vim, try to reproduce your problem. If you
are not able to reproduce the problem, then the problem is related to some
setting in one of your local setup files or plugins. To locate the problem
in your setup files, you have to use trial and error and try commenting out
the lines in your setup files one by one. You can also use the -V command
line argument to Vim to get more debug information and analyze the problem: >

    $ vim -V2
<
You can increase the value passed to the -V argument to get more debug
information.

For more information, read 

    |-u|
    |-U|
    |-N|
    |-V|
    |'verbose'|
    |:verbose|
    |set-verbose|

 								*faq-2.6*
2.6. Where can I report bugs?

First collect the required information using the following command: >

    :source $VIMRUNTIME/bugreport.vim
<
Now send the resulting text from the above command to the bugs@vim.org
e-mail address.

The Vim Development mailing list (see above) is a good place to discuss
general bugs.  If the bug you find is with syntax highlighting or some
other "added feature" (i.e. not directly programmed into vim), attempt to
inform the maintainer of that feature.

For more information, read 

    |bug-reports|

 								*faq-2.7*
2.7. Where can the FAQ be found?

The FAQ can be found at VimOnline (vim.sf.net).  Other places will be
decided in the future.

 								*faq-2.8*
2.8. What if I don't find an answer in this FAQ?

This FAQ covers mainly Vim-specific questions. You may find more
information suitable for most Vi clones by reading the Vi FAQ. It is posted
regularly on comp.editors. You can also find a copy at >

    http://www.faqs.org/faqs/editor-faq/vi/part1/index.html
<
Also, since Vim has gathered so many features in the last few years,
successfully documenting the frequently asked questions here is a
near-impossible task.  To make it possible, please email the maintainer if
you have a good question.  A good question is one that you've tried to
answer yourself (remember, Vim has great documentation) but struggled.

 								*faq-2.9*
2.9. I have a patch for implementing a Vim feature. Where can I send this
     patch?

You can send your patches to the Vim developer mailing list
vim-dev@vim.org.

For more information, read 

    |vim-dev|

 								*faq-2.10*
2.10. I have a Vim tip or developed a new Vim
      syntax/indent/filetype/compiler plugin or developed a new script or a
      colorscheme. Is there a public website where I can upload this?

Yes. You can use the Vim Online website to upload your plugins/scripts,
colorschemes, tips, etc. The site is at http://vim.sourceforge.net

=============================================================================
 								*faq-3*
SECTION 3 - AVAILABILITY

 								*faq-3.1*
3.1. What is the latest version of Vim?

The latest version of Vim is 7.3 released on 15th August 2010.

The release-history of different versions of Vim is below:

Version 7.3     15th August, 2010
Version 7.2     9th August, 2008
Version 7.1     12th May, 2007
Version 7.0     8th May, 2006
Version 6.4     15th October, 2005
Version 6.3     8th June 2004
Version 6.2     1st June 2003
Version 6.1     24th March 2002
Version 6.0     27th September, 2001
Version 5.8     31st May, 2001
Version 5.7     24th June, 2000
Version 5.6     16th January, 2000
Version 5.5     21st September, 1999
Version 5.4     26th July, 1999
Version 5.3     31st August, 1998
Version 5.2     24th August, 1998
Version 5.1     7th April, 1998
Version 5.0     19th February, 1998
Version 4.6     13th March,1997
Version 4.5     17th October, 1996
Version 4.2     5th July,1996
Version 4.0     21st May, 1996
Version 3.0     16th August, 1994
Version 2.0     21st December, 1993
Version 1.27    23rd April, 1993
Version 1.17    21st April, 1992

For more information, read 

    |new-5|
    |new-6|
    |new-7|
    |changed-6.1|
    |changed-6.2|
    |changed-6.3|
    |changed-6.4|
    |changed-7.1|
    |changed-7.2|
 								*faq-3.2*
3.2. Where can I find the latest version of Vim?

You can download the sources for the latest version of Vim from the
VimOnline website. The URL for this site is
http://vim.sourceforge.net/download.php.

 								*faq-3.3*
3.3. What platforms does it run on?

All Unix platforms.
All Windows platforms.
Amiga, Atari, BeOS, DOS, Macintosh, MachTen, OS/2, RiscOS, VMS, IBM z/OS.

 								*faq-3.4*
3.4. Where can I download the latest version of the Vim runtime files?

You can download the latest version of the Vim runtime files (syntax files,
filetype plugins, compiler files, color schemes, documentation, indentation
files and keymaps) from the Vim ftp site from the
ftp://ftp.vim.org/pub/vim/runtime directory.

Alternatively, the runtime files can be downloaded from the mercurial
repository that holds Vim source code at:
http://code.google.com/p/vim/source/browse/runtime

=============================================================================
 								*faq-4*
SECTION 4 - HELP

 								*faq-4.1*
4.1. How do I use the help files?

Help can be found for all functions of Vim. In order to use it, use the
":help" command.  This will bring you to the main help page. On that first
page, you will find explanations on how to move around. Basically, you move
around in the help pages the same way you would in a read-only document.
You can jump to specific subjects by using tags. This can be done in two
ways:

   * Use the "<Ctrl-]>" command while standing on the name of a command or
     option. This only works when the tag is a keyword. "<Ctrl-LeftMouse>"
     and "g<LeftMouse>" work just like "<Ctrl-]>".
   * use the ":tag <subject>" command. This works with all characters.

Use "<Ctrl-T>" to jump back to previous positions in the help files. Use
":q" to close the help window.

If you want to jump to a specific subject on the help pages, use ":help
{subject}". If you don't know what to look for, try ":help index" to get a
list of all available subjects. Use the standard search keys to locate the
information you want. You can abbreviate the ":help" command as ":h".

For more information, read 

    |online-help|

 								*faq-4.2*
4.2. How do I search for a keyword in the Vim help files?

a)  You can press the CTRL-D key after typing the help keyword to get a
    list of all the help keywords containing the supplied pattern. You can
    also use the meta characters like *, \+, etc to specify the help
    search pattern:  >

    :help init<C-D>
    :help str*()<C-D>
    :help '*indent<C-D>
<
b)  You can press the Tab key after typing a partial help keyword to expand
    to the matching keyword. You can continue to press the Tab key to see
    other keyword matches.

c)  From the help window, you can use the ":tag" command to search for
    keywords. For example, >

    :tselect /window
<
    This command will list all the help keywords containing the text
    "window". You can select one from the list and jump to it.

d)  You can use the ":helpgrep" command to search for the given text in all
    the help files. The quickfix window will be opened with all the
    matching lines.

For more information, read 

    |c_CTRL-D|
    |c_<Tab>|
    |:tselect|
    |:help|
    |:helpgrep|

 								*faq-4.3*
4.3. I am getting an error message E123, what did I do wrong?

You can get more information about the error and the error message using: 

    |E123|

For more information, read 

    |error-messages|

 								*faq-4.4*
4.4. Where can I read about the various modes in Vim?

You can get information about the different modes in Vim by reading 

    |vim-modes|

 								*faq-4.5*
4.5. How do I generate the Vim help tags file after adding a new Vim help
     file?

You can use the ":helptags" command to regenerate the Vim help tag file.
For example: >

    :cd $VIMRUNTIME/doc
    :helptags .
<
For more information, read 

    |:helptags|
    |add-local-help|

 								*faq-4.6*
4.6. Can I use compressed versions of the help files?

Yes. You can compress the help files and still be able to view them with
Vim.  This makes accessing the help files a bit slower and requires the
"gzip" utility. Follow these steps to compress and use the Vim help files:

- Compress all the help files using "gzip doc/*.txt".

- Edit the "doc/tags" file and change the ".txt" to ".txt.gz" using
        :%s=\(\t.*\.txt\)\t=\1.gz\t=

- Add the following line to your vimrc:
        set helpfile={dirname}/help.txt.gz

Where {dirname} is the directory where the help files are.  The gzip.vim
plugin supplied with the standard Vim distribution will take care of
decompressing the files.  You must make sure that $VIMRUNTIME is set to
where the other Vim files are, when they are not in the same location as
the compressed "doc" directory.

For more information, read 

    |gzip-helpfile|
    |'helpfile'|
    |gzip|
    |$VIMRUNTIME|

=============================================================================
 								*faq-5*
SECTION 5 - EDITING A FILE

 								*faq-5.1*
5.1. How do I load a file in Vim for editing?

There are several ways to load a file for editing. The simplest is to
use the ":e" (:edit) command: >

    :e <filename>
<
You can also use the ":n" (:next) command to load files into Vim: >

    :n <filename(s)>
<
You can also use the ":args" command to load files into Vim: >

    :args <filename(s)>
<
For more information, read 

    |usr_07|
    |edit-files|
    |:edit|
    |:next_f|
    |:args_f|

 								*faq-5.2*
5.2. How do I save the current file in another name (save as) and edit a
     new file?

You can use the ":saveas" command to save the current file in another name: >

    :saveas <newfilename>
<
Alternatively, you can also use the following commands: >

    :w <newfilename>
    :edit #
<
You can also use the ":file" command, followed by ":w" command: >

    :file <newfilename>
    :w
<
For more information, read 

    |07.7|
    |:saveas|
    |:file_f|
    |:w|

 								*faq-5.3*
5.3. How do I change the current directory to the directory of the current
     file?

You can use the following command to change the current directory to the
directory of the current file: >

    :cd %:p:h
<
To automatically change the current directory to the directory of the
current file, simply set the option 'autochdir'. >

    :set autochdir
<
For more information, read 

    |:cd|
    |:lcd|
    |filename-modifiers|
    |autocommand|
    |'acd'|

 								*faq-5.4*
5.4. How do I write a file without the line feed (EOL) at the end of the
     file?

You can turn off the 'eol' option and turn on the 'binary' option to write
a file without the EOL at the end of the file: >

    :set binary
    :set noeol
    :w
<
For more information, read 

    |'endofline'|
    |'binary'|
    |23.4|

 								*faq-5.5*
5.5. How do I configure Vim to open a file at the last edited location?

Vim stores the cursor position of the last edited location for each buffer
in the '"' register. You can use the following autocmd in your .vimrc or
.gvimrc file to open a file at the last edited location: >

    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif
<
For more information, read 

    |'quote|
    |last-position-jump|

 								*faq-5.6*
5.6. When editing a file in Vim, which is being changed by an external
     application, Vim opens a warning window (like the confirm dialog) each
     time a change is detected. How do I disable this warning?

You can set the Vim 'autoread' option to automatically read the file again
when it is changed outside of Vim: >

    :set autoread
<
You can also use the following autocommand: >

    autocmd FileChangedShell *
          \ echohl WarningMsg |
          \ echo "File has been changed outside of vim." |
          \ echohl None
<
For more information, read 

    |'autoread'|
    |FileChangedShell|
    |timestamp|
    |:checktime|

 								*faq-5.7*
5.7. How do I edit a file whose name is under the cursor?

You can use the gf command to edit a file whose name is under the cursor.
You can use the CTRL-W f command to edit the file in a new window and
finally you can use CTRL-W gf top open a new tab page that contains the
file name under the cursor.

For more information, read 

    |gf|
    |CTRL-W_f|
    |CTRL-W_gf|
    |'isfname'|
    |'path'|
    |'suffixesadd'|
    |'includeexpr'|

 								*faq-5.8*
5.8. How do I reload/re-edit the current file?

You can use the ":edit" command, without specifying a file name, to reload
the current file.  If you have made modifications to the file, you can use
":edit!" to force the reload of the current file (you will lose your
modifications).

For more information, read 

    |:edit|
    |:edit!|
    |'confirm'|

 								*faq-5.9*
5.9. How do I autosave a file periodically?

Vim doesn't support auto-saving a file periodically.

For more information, read 

    |'updatetime'|
    |CursorHold|
    |swap-file|

 								*faq-5.10*
5.10. How do I open a file in read-only mode?

You can open a file in read-only mode using the ":view" command: >

    :view <filename>
<
This command sets the 'readonly' option for the opened buffer. You can also
use the "-R" command-line option to open a file in read-only mode: >

    $ vim -R <filename>
<
You can also use the symbolic link executable "view" to open a file in
read-only mode from the command-line: >

    $ view <filename>
<
For more information, read 

    |07.6|
    |'readonly'|
    |'modifiable'|
    |:view|
    |:sview|
    |view|
    |-R|
    |-M|

 								*faq-5.11*
5.11. How do I open a file for editing without saving the modifications to
      the current file?

You can open a file for editing without saving the modifications to the
current file and without losing the changes using one of the following
methods: >

    :split <new_filename>
    :new <new_filename>
<
You can also set the 'hidden' option and edit a new file: >

    :set hidden
    : e <new_filename>
<
If you want to discard the changes made to the current file and load
another file for editing, then you can use the following command: >

    :e! <new_filename>
<
For more information, read 

    |:edit!_f|
    |'hidden'|
    |:split|
    |:new|

 								*faq-5.12*
5.12. How do I reduce the loading time for very large files in Vim?

You can use the following settings to reduce the loading time for
very large files in Vim: >

    :set lazyredraw
    :set noswapfile
    :set undolevels=-1
    :set eventignore=all
    :set nohidden
    :set syntax=off
<
Note that the above settings will disable many Vim features including the
following: Swap files support for crash recovery, undo support, syntax
highlighting, filetype detection and other autocommand based features.

=============================================================================
 								*faq-6*
SECTION 6 - EDITING MULTIPLE FILES

 								*faq-6.1*
6.1. How do I open multiple files at once from within Vim?

There are several ways to open multiple files at once from within Vim. You
can use the ":next" command to specify a group of files: >

    :next f1.txt f2.txt
    :next *.c
<
You can use the :args command to specify a group of files as arguments: >

    :args f1.txt f2.txt
    :args *.c
<
After loading the files, you can use the ":next" and ":prev" command to
switch between the files.

For more information, read 

    |07.2|
    |:next|
    |:args_f|
    |argument-list|

 								*faq-6.2*
6.2. How do I switch between multiple files/buffers in Vim?

There are several ways to switch between multiple files. You can use the
":buffer" command to switch between multiple files. For example, >

    :buffer file1
    :buffer file2
<
You can also use the CTRL-^ key to switch between buffers. By specifying a
count before pressing the key, you can edit the buffer with that number.
Without the count, you can edit the alternate buffer by pressing CTRL-^

You can also use the ":e #" command to edit a particular buffer: >

    :e #5
<
For more information, read 

    |edit-files|
    |:buffer|
    |CTRL-^|
    |alternate-file|
    |22.4|
    |07.3|

 								*faq-6.3*
6.3. How do I open several files in Vim, with each file in a separate
     window/tab?

You can use the -o and -O Vim command line arguments to open multiple files
in separate horizontally or vertically split Vim windows. For example: >

    $ vim -o3 f1.txt f2.txt f3.txt
<
The above command will open the files f1.txt, f2.txt and f3.txt in three
separate horizontally split Vim windows. >

    $ vim -O3 f1.txt f2.txt f3.txt
<
The above command will open the files f1.txt, f2.txt and f3.txt in three
separate vertically split Vim windows. >

    $ vim -p f1.txt f2.txt f3.txt
<
The above command will open the files f1.txt, f2.txt and f3.txt in three
separate tab windows. The option 'tabpagemax' defines, how many tabpages
can be opened at the same time, by default it is set to 10.

For more information, read 

    |-o|
    |-O|
    |-p|
    |startup-options|

 								*faq-6.4*
6.4. How do I configure Vim to autoload several files at once similar to
     "work-sets" or "projects"?

You can use the ":mksession" and the ":mkview" commands to autoload several
files in Vim.

The ":mksession" command creates a Vim script that restores the current
editing session. You can use the ":source" command to source the file
produced by the mksession command.

The ":mkview" command creates a Vim script that restores the contents of
the current window. You can use the ":loadview" command to load the view
for the current file.

For more information, read 

    |21.4|
    |21.5|
    |views-sessions|
    |'sessionoptions'|
    |:mksession|
    |:source|
    |v:this_session|
    |:mkview|
    |:loadview|
    |'viewdir'|
    |buffers|

 								*faq-6.5*
6.5. Is it possible to open multiple top level windows in a single instance
     of Vim similar to Nedit or emacs?

No. It is currently not possible to open multiple top-level windows in a
single instance of Vim. This feature is in the todo list.

 								*faq-6.6*
6.6. How do I browse/explore directories from within Vim?

You can use the netrw.vim plugin, supplied with the standard Vim
installation, to browse/explore directories from within Vim. You can start
the file explorer using one of the following commands: >

    :e <directory>
    :Explore
    :Sexplore
    :Vexplore
    :Texplore
<
From the file explorer, you can browse through directories, rename, delete
and edit files.

For more information, read 

    |netrw.vim|
    |22.1|

 								*faq-6.7*
6.7. How do I edit files over a network using ftp/scp/rcp/http?

You can use the netrw.vim plugin, supplied with the standard Vim package,
to edit files over a network using ftp/scp/rcp/http. Using this plugin, Vim
will transparently load and save the files over ftp/scp/rcp/http. For
example, to edit a file over ftp, you can use the following command: >

    $ vim ftp://machine/path
<
For more information, read 

    |netrw.vim|

=============================================================================
 								*faq-7*
SECTION 7 - BACKUP

 								*faq-7.1*
7.1. When I edit and save files, Vim creates a file with the same name as
     the original file and a "~" character at the end. How do I stop Vim
     from creating this file? (or) How do I disable the Vim backup file
     feature?

You have set the 'backup' option, so Vim creates a backup file when saving
the original file. You can stop Vim from creating the backup file, by
clearing the option: >

    :set nobackup
<
Note that, by default this option is turned off. You have explicitly
enabled the 'backup' option in one of the initialization files. You may
also have to turn off the 'writebackup' option: >

    :set nowritebackup
<
For more information, read 

    |07.4|
    |backup-table|
    |'backup'|
    |'writebackup'|
    |'backupskip'|
    |'backupdir'|
    |'backupext'|
    |'backupcopy'|
    |backup|
 								*faq-7.2*
7.2. When I edit and save files, Vim creates a file with the same name as
     the original file and a "un~" extension at the end. How do I stop Vim
     from creating this file (or) How do I disable the Vim undofile feature?

Vim 7.3 contains as new feature persistent undo, that is, undo information
won't be lost when quitting Vim and be stored in a file that ends with .un~
You have set the 'undofile' option, so Vim creates an undo file when saving
the original file. You can stop Vim from creating the backup file, by
clearing the option: >

    :set noundofile
<
Note that, by default this option is turned off. You have explicitly
enabled the 'undofile' option in one of the initialization files. If you
want your undofiles to be stored only in a particular directory, you can
point the 'undodir' option to a directory that will contain all your
aggregated undofiles.

For more information, read 

    |'undodir'|
    |'undofile'|
    |undo-persistence|
 								*faq-7.3*
7.3. How do I configure Vim to store all the backup files in a particular
     directory?

You can configure Vim to store all the backup files in a particular
directory using the 'backupdir' option. For example, to store all the
backup files in the ~/backup directory, you can use the following command: >

    :set backupdir=~/backup
<
For more information, read 

    |07.4|
    |'backupdir'|
    |backup|

 								*faq-7.4*
7.4. When I save a file with Vim, the file permissions are changed.
     How do I configure Vim to save a file without changing the file
     permissions?

This may happen, if the 'backupcopy' option is set to 'no' or 'auto'. Note
that the default value for this option is set in such a way that this will
correctly work in most of the cases. If the default doesn't work for you,
try setting the 'backupcopy' option to 'yes' to keep the file permission
when saving a file: >

    :set backupcopy=yes
<
This applies, only if you have configured Vim to make a backup whenever
overwriting a file. By default, Vim will not backup files.

For more information, read 

    |'backupcopy'|
    |backup|
    |'backup'|
    |'writebackup'|

=============================================================================
 								*faq-8*
SECTION 8 - BUFFERS

 								*faq-8.1*
8.1. I have made some modifications to a buffer. How do I edit another
     buffer without saving the modified buffer and also without losing the
     modifications?

You can set the 'hidden' option to edit a file without losing modifications
to the current file: >

    :set hidden
<
By setting the 'hidden' option, you can also save the modification history
(undo-history) for the buffer. Otherwise, as you switch between files, the
undo-history will be lost.

For more information, read 

    |'hidden'|
    |hidden-quit|
    |:hide|

 								*faq-8.2*
8.2. How do I configure Vim to auto-save a modified buffer when switching
     to another buffer?

You can set the 'autowrite' option to auto-save a modified buffer when
switching to another buffer: >

    :set autowrite
<
For more information, read 

    |'autowrite'|
    |'autowriteall'|
    |'hidden'|

 								*faq-8.3*
8.3. How do I replace the buffer in the current window with a blank buffer?

You can use the ":enew" command to load an empty buffer in place of the
buffer in the current window.

For more information, read 

    |:enew|

 								*faq-8.4*
8.4. Is there a keyboard shortcut to load a buffer by the buffer number?

You can use the CTRL-^ command to load a buffer by specifying the buffer
number. For example, to load buffer number 5, you have to use the 5 CTRL-^
command.

For more information, read 

    |CTRL-^|

 								*faq-8.5*
8.5. How do I open all the current buffers in separate windows?

You can use the ":ball" or ":sball" commands to open all the buffers
in the buffer list: >

    :ball
<
For more information, read 

    |:ball|

 								*faq-8.6*
8.6. How do I close (delete) a buffer without exiting Vim?

You can use any of ":bdelete", ":bwipeout" or ":bunload" commands to
delete a buffer without exiting Vim. For example: >

    :bdelete file1
<
For more information, read 

    |:bdelete|
    |:bwipeout|
    |:bunload|

 								*faq-8.7*
8.7. I have several buffers opened with :e filename. How do I close one of
     the buffers without exiting Vim?

You can use the ":bdelete <buffername>" command to close the buffer.

For more information, read 

    |:bdelete|
    |:bunload|
    |:bwipeout|

 								*faq-8.8*
8.8. When I use the command ":%bd" to delete all the buffers, not all the
     buffers are deleted. Why?

In the ":%bd" command, the '%' range will be replaced with the starting and
ending line numbers in the current buffer. Instead of using '%' as the
range, you should specify numbers for the range. For example, to delete all
the buffers, you can use the command ":1,9999bd".

For more information, read 

    |:bd|

 								*faq-8.9*
8.9. How do I display the buffer number of the current buffer/file?

You can use 2<CTRL-G> command to display the buffer number for the current
file/buffer. Note the use of count before the CTRL-G command. If the count
is greater than 1, then Vim will display the buffer number.

You can also use the following command to display the current buffer
number: >

    :echo bufnr("%")
<
You can also include the "%n" field to the 'statusline' option to display
the current buffer number on the statusline.

For more information read, 

    |CTRL-G|
    |bufnr()|
    |:echo|
    |'statusline'|

 								*faq-8.10*
8.10. How do I delete a buffer without closing the window in which the
      buffer is displayed?

You can use the following command to open the next buffer and delete
the current buffer. >

    :bnext | bdelete #
<
For more information read, 

    |:bnext|
    |:bdelete|
    |:buffers|

 								*faq-8.11*
8.11. How do I map the tab key to cycle through and open all the buffers?

You can use the following two map commands, to map the CTRL-Tab key to open
the next buffer and the CTRL-SHIFT-Tab key to open the previous buffer: >

    :nnoremap <C-Tab> :bnext<CR>
    :nnoremap <S-C-Tab> :bprevious<CR>
<
For more information read, 

    |:bnext|
    |:previous|

=============================================================================
 								*faq-9*
SECTION 9 - WINDOWS

 								*faq-9.1*
9.1. What is the difference between a Vim window and a buffer?

A Vim buffer is a file loaded into memory for editing. The original file
remains unchanged until you write the buffer to the file. A Vim window is a
viewport onto a buffer. You can use multiple windows on one buffer or
several windows on different buffers.

For more information, read 

    |usr_08.txt|
    |22.4|
    |windows-intro|
    |Q_wi|

 								*faq-9.2*
9.2. How do I increase the width of a Vim window?

You can increase the width of a Vim window using one of the following
commands: >

    :vert resize +N
    :vert resize -N
    :vert resize N
<
You can also use CTRL-W < or CTRL-W > or CTRL-W | commands.

For more information, read 

    |vertical-resize|
    |CTRL-W_>|
    |CTRL-W_<|
    |window-resize|

 								*faq-9.3*
9.3. How do I zoom into or out of a window?

You can zoom into a window (close all the windows except the current
window) using the "CTRL-W o" command or the ":only" ex command.

You can use the "CTRL-W _" command or the ":resize" ex command to increase
the current window height to the highest possible without closing other
windows.

You can use the "CTRL-W |" command or the ":vertical resize" ex command to
increase the current window width to the highest possible without closing
other windows.

You can use the "CTRL-W =" command to make the height and width of all the
windows equal.

You can also set the following options to get better results with the above
commands:

Method 1:
Set the 'winminheight' option to 0: >

    :set winminheight=0
<
By default, this option is set to 1.
This option controls the minimum height of an inactive window (when it is
not the current window).  When the 'winminheight' option is set to 0, only
the status line will be displayed for inactive windows.

Method 2:
Set the 'noequalalways' option and set the 'winheight' option to a large
value (like 99999): >

    :set noequalalways
    :set winheight=99999
<
Now, the active window will always open to its maximum size, while the
other windows will stay present, but shrunken to just a status line.

With any of the above mentioned methods, you cannot restore the window
layout after zooming into a window.  If you want to restore the Vim window
layout after zooming into a window, you can use the ZoomWin plugin. You can
download this plugin from the Vim online website at:

http://vim.sourceforge.net/scripts/script.php?script_id=508

For more information, read 

    |CTRL-W_o|
    |window-resize|
    |'winminheight'|
    |'equalalways'|
    |'winheight'|
    |08.3|

 								*faq-9.4*
9.4. How do I execute an ex command on all the open buffers or open windows
     or all the files in the argument list?

You can use the ":bufdo" command to execute an ex command on all the open
buffers.  You can use the ":windo" command to execute an ex command on all
the open windows.  You can use the ":argdo" command to execute an ex
command on all the files specified in the argument list. And finally you
can use the ":tabdo" command to execute an ex command in all open tab pages.

For more information, read 

    |:windo|
    |:bufdo|
    |:argdo|
    |:tabdo|
    |26.3|

=============================================================================
 								*faq-10*
SECTION 10 - MOTION

 								*faq-10.1*
10.1. How do I jump to the beginning (first line) or end (last line) of a
     file?

You can use 'G' command to jump to the last line in the file and the 'gg'
command to jump to the first line in the file.

For more information, read 

    |G|
    |gg|

 								*faq-10.2*
10.2. In insert mode, when I press the <Esc> key to go to command mode, the
     cursor moves one character to the left (except when the cursor is on
     the first character of the line). Is it possible to change this
     behavior to keep the cursor at the same column?

No. It is not possible to change this behavior. The cursor is always
positioned on a valid character (unless you have virtual-edit mode
enabled). So, if you are appending text to the end of a line, when you
return to command mode the cursor *must* drop back onto the last character
you typed. For consistency sake, the cursor drops back everywhere, even if
you are in the middle of a line.

You can use the CTRL-O command in insert mode to execute a single ex
command and return back to insert mode without moving the cursor column.

For more information, read 

    |'virtual'|
    |i_CTRL-O|

 								*faq-10.3*
10.3. How do I configure Vim to maintain the horizontal cursor position when
     scrolling with the <Page Up>, <Page Down>, etc keys?

You can reset the 'startofline' option to keep the cursor at the same
horizontal location when scrolling text: >

    :set nostartofline
<
For more information, read 

    |'startofline'|

 								*faq-10.4*
10.4. Some lines in a file are more than the screen width and they are all
     wrapped. When I use the j, k keys to move from one line to the next,
     the cursor is moved to the next line in the file instead of the next
     line on the screen. How do I move from one screen line to the next?

You can use the gj and gk commands to move from one screen line to the
next/previous screen line. The j and k commands move the cursor from one
file line to the next file line. You can also avoid the line wrapping by
resetting the 'wrap' option: >

    :set nowrap
<
For more information, read 

    |gj|
    |gk|
    |'wrap'|

You can use the following mappings: >

    :map <Up> gk
    :imap <Up> <C-o>gk
    :map <Down> gj
    :imap <Down> <C-o>gj
<
 								*faq-10.5*
10.5. What is the definition of a sentence, paragraph and section in Vim?

A sentence is defined as ending at a '.', '!' or '?' followed by either the
end of a line, or by a space (or two) or tab. Which characters and the
number of spaces needed to constitute a sentence ending is determined by
the 'joinspaces' and 'cpoptions' options.

A paragraph begins after each empty line, and also at each of a set of
paragraph macros, specified by the pairs of characters in the 'paragraphs'
option.

A section begins after a form-feed (<C-L>) in the first column and at each
of a set of section macros, specified by the pairs of characters in the
'sections' option.

For more information, read 

    |sentence|
    |'joinspaces'|
    |'cpoptions' | /^\s*j\>|
    |paragraph|
    |section|
    |word|

 								*faq-10.6*
10.6. How do I jump to beginning or end of a sentence, paragraph or a
     section?

You can use the following motion commands to jump to the beginning or end
of a sentence or a paragraph or a section: >

      motion  position    where
      (       beginning   current sentence
      )       end         current sentence
      {       beginning   current paragraph
      }       end         current paragraph
      []      end         previous section
      [[      beginning   current section
      ][      end         current section
      ]]      beginning   next section
<
Each of these motions can be preceded by a number which will extend the
jump forward (or backward).

For more information, read 

    |object-motions|

 								*faq-10.7*
10.7. I have lines in a file that extends beyond the right extent of the
     screen. How do I move the Vim view to the right to see the text off
     the screen?

You can use one of the following commands to horizontally scroll the screen
to the left or right: >

    zl - scroll to the left
    zh - scroll to the right
    zL - scroll half a screenwidth to the left
    zH - scroll half a screenwidth to the right
    zs - scroll to position the cursor at the start of the screen
    ze - scroll to position the cursor at the end of the screen
<
You can use the g0 command to move the cursor to the first character of the
screen line and the g$ command to move the cursor to the last character of
the screen line without scrolling the screen.

For more information, read 

    |scroll-horizontal|

 								*faq-10.8*
10.8. How do I scroll two or more buffers simultaneously?

You can set the "scrollbind" option for each of the buffers to scroll them
simultaneously.

For more information, read 

    |'scrollbind'|
    |scroll-binding|
    |'scrollopt'|

 								*faq-10.9*
10.9. When I use my arrow keys, Vim changes modes, inserts weird characters
     in my document but doesn't move the cursor properly. What's going on?

There are a couple of things that could be going on: either you are using
Vim over a slow connection or Vim doesn't understand the key sequence that
your keyboard is generating.

If you are working over a slow connection (such as a 2400 bps modem), you
can try to set the 'timeout' or 'ttimeout' option. These options, combined
with the 'timeoutlen' and 'ttimeoutlen' options, may fix the problem.

The preceding procedure will not work correctly if your terminal sends key
codes that Vim does not understand. In this situation, your best option is
to map your key sequence to a matching cursor movement command and save
these mappings in a file. You can then ":source" the file whenever you work
from that terminal.

For more information, read 

    |'timeout'|
    |'ttimeout'|
    |'timeoutlen'|
    |'ttimeoutlen'|
    |:map|
    |vt100-cursor-keys|

 								*faq-10.10*
10.10. How do I configure Vim to move the cursor to the end of the previous
      line, when the left arrow key is pressed and the cursor is currently
      at the beginning of a line?

You can add the '<' flag to the 'whichwrap' option to configure Vim to move
the cursor to the end of the previous line, when the left arrow key is
pressed and the cursor is currently at the beginning of a line: >

    :set whichwrap+=<
<
Similarly, to move the cursor the beginning of the next line, when the
right arrow key is  pressed and the cursor is currently at the end of a
line, add the '>' flag to the 'whichwrap' option: >

    :set whichwrap+=>
<
The above will work only in normal and visual modes. To use this in insert
and replace modes, add the '[' and ']' flags respectively.

For more information, read 

    |'whichwrap'|
    |05.7|

 								*faq-10.11*
10.11. How do I configure Vim to stay only in insert mode (modeless
      editing)?

You can set the 'insertmode' option to configure Vim to stay only in insert
mode: >

    :set insertmode
<
By setting this option, you can use Vim as a modeless editor. If you press
the <Esc> key, Vim will not go to the normal mode. To execute a single
normal mode command, you can press CTRL-O followed by the normal mode
command.  To execute more than one normal command, you can use CTRL-L
followed by the commands. To return to insert mode, press the <Esc> key. To
disable this option, reset the 'insertmode' option: >

    :set noinsertmode
<
You can also start vim using the "evim" command or you can use "vim -y" to
use Vim as a modeless editor.

You can also start Vim in insert mode using the ":startinsert" ex command.

For more information, read 

    |'insertmode'|
    |:startinsert|
    |:stopinsert|
    |i_CTRL-O|
    |i_CTRL-L|
    |evim|
    |evim-keys|

 								*faq-10.12*
10.12. How do I display some context lines when scrolling text?

You can set the 'scrolloff' option to display a minimal number of screen
lines (context) above and below the cursor. >

    :set scrolloff=10
<
For more information, read 

    |'scrolloff'|
    |'sidescrolloff'|

 								*faq-10.13*
10.13. How do I go back to previous cursor locations?

You can go back to the cursor location before the latest jump using the ''
or `` command. You can use the CTRL-O command to go back to older cursor
positions and the CTRL-I command to go to the newer cursor positions in the
jump list.

For more information, read 

    |03.10|
    |mark-motions|
    |jump-motions|

=============================================================================
 								*faq-11*
SECTION 11 - SEARCHING TEXT

 								*faq-11.1*
11.1. After I searched for a text with a pattern, all the matched text
      stays highlighted. How do I turn off the highlighting
      temporarily/permanently?

The 'hlsearch' option controls whether all the matches for the last
searched pattern are highlighted or not. By default, this option is not
enabled. If this option is set in a system-wide vimrc file, then you can
turn off the search highlighting by using the following command: >

    :set nohlsearch
<
To temporarily turn off the search highlighting, use >

    :nohlsearch
<
You can also clear the search highlighting, by searching for a pattern that
is not in the current file (for example, search for the pattern 'asdf').

For more information, read 

    |'hlsearch'|
    |:nohlsearch|

 								*faq-11.2*
11.2. How do I enter a carriage return character in a search pattern?

You can either use '\r' or <CTRL-V><CTRL-M> to enter a carriage return
character in a pattern. In Vim scripts, it is better to use '\r' for the
carriage return character.

For more information, read 

    |sub-replace-special|

 								*faq-11.3*
11.3. How do I search for the character ^M?

You can enter the ^M character in a search command by first pressing the
CTRL-V key and then pressing the CTRL-M key. >

    /^V^M
<
You can also use the "\r" character. In Vim scripts, "\r" is preferred.

For more information, read 

    |c_CTRL-V|
    |using_CTRL-V|
    |/\r|

 								*faq-11.4*
11.4. How can I search/replace characters that display as '~R', '~S', etc.?

You can use the 'ga' command to display the ASCII value/code for the
special character. For example, let us say the ASCII value is 142. Then you
can use the following command to search for the special character: >

    /^V142
<
where, ^V is entered by pressing CTRL-V.

For more information, read 

    |ga|
    |using_CTRL_V|
    |24.8|

 								*faq-11.5*
11.5. How do I highlight all the non-printable characters in a file?

You can use the following commands and search pattern to highlight all the
non-printable characters in a file: >

    :set hlsearch
    /\(\p\|$\)\@!.
<
For more information, read 

    |/\p|
    |/bar|
    |/$|
    |/\(|
    |/\@!|
    |'hlsearch'|

 								*faq-11.6*
11.6. How do I search for whole words in a file?

You can search for whole words in a file using the \< and \> atoms. For
example: >

    /\<myword\>
<
The \< atom matches the beginning of the word and the \> atom matches the
end of the word.

For more information, read 

    |/\<|
    |/\>|

 								*faq-11.7*
11.7. How do I search for the current word under the cursor?

You can press the * key to search forward for the current word under the
cursor.  To search backward, you can press the # key. Note that only whole
keywords will be searched using these commands.

For more information, read 

    |star|
    |#|
    |g*|
    |g#|
    |03.8|
    |search-commands|

 								*faq-11.8*
11.8. How do I search for a word without regard to the case (uppercase or
      lowercase)?

To always ignore case while searching for a pattern, set the 'ignorecase'
option: >

    :set ignorecase
<
To ignore case only when searching a particular pattern, use the special \c
directive: >

    /\c<pattern>
<
For more information, read 

    |'ignorecase'|
    |/ignorecase|
    |/\c|

 								*faq-11.9*
11.9. How do I search for words that occur twice consecutively?

You can use one of the following search commands to locate words that occur
twice consecutively: >

     /\(\<\w\+\)\_s\+\1\>
     /\(\<\k\+\)\_s\+\1\>
<
The main difference is the use of '\w' and '\k', where the latter is based
on the 'iskeyword' option which may include accented and other language
specific characters.

For more information, read 

    |/\1|
    |/\(|
    |/\)|
    |/\<|
    |/\>|
    |/\w|
    |/\k|
    |/\+|
    |/\_x|
    |'iskeyword'|

 								*faq-11.10*
11.10. How do I count the number of times a particular word occurs in a
       buffer?

You can use the following set of commands to count the number of times a
particular word occurs in a buffer: >

    :let cnt=0
    :g/\<your_word\>/let cnt=cnt+1
    :echo cnt
<
This only counts the number of lines where the word occurs. You can also
use the following command: >

    :%s/\<word\>/&/gn
<
To count the number of alphabetic words in a file, you can use >

    :%s/\a\+/&/gn
<
To count the number of words made up of non-space characters, you can use >

    :%s/\S\+/&/gn
<
For more information, read 

    |count-items|
    |word-count|
    |v_g_CTRL-G|
    |12.5|
    |s_flags | /^\[n\]|

 								*faq-11.11*
11.11. How do I place the cursor at the end of the matched word when
       searching for a pattern?

You can use the 'e' offset to the search command to place the cursor at the
end of the matched word. For example >

    /mypattern/e
<
For more information about search offsets, read 

    |search-offset|
    |/|

 								*faq-11.12*
11.12. How do I search for an empty line?

You can search for an empty line using: >

    /^$
<
    or >

    /^\s*$
<
The latter also matches lines, that consist only of white space, while the
former only matches true empty lines. For more information, read 

    |/^|
    |/$|
    |/\s|
    |/*|
    |search-commands|

 								*faq-11.13*
11.13. How do I search for a line containing only a single character?

You can search for a line containing only a single character using: >

    /^\s*\a\s*$
<
For more information, read 

    |/^|
    |/\a|
    |/\s|
    |/*|
    |/$|

 								*faq-11.14*
11.14. How do I search and replace a string in multiple files?

You can use the 'argdo', 'bufdo', 'windo' or 'tabdo' commands to execute an
ex command on multiple files. For example: >

    :argdo %s/foo/bar/g
<
For more information, read 

    |:argdo|
    |:bufdo|
    |:windo|
    |:tabdo|

 								*faq-11.15*
11.15. I am using the ":s" substitute command in a mapping. When a search
       for a pattern fails, the map terminates. I would like the map to
       continue processing the next command, even if the substitute command
       fails. How do I do this?

You can use the 'e' flag to the substitute command to continue processing
other commands in a map, when a pattern is not found.

For more information, read 

    |:s_flags|

 								*faq-11.16*
11.16. How do I search for the n-th occurrence of a character in a line?

To search for the n-th occurrence of a character in a line, you can prefix
the 'f' command with a number. For example, to search for the 5th
occurrence of the character @ in a line, you can use the command 5f@. This
assumes the cursor is at the beginning of the line - and that this first
character is not the one your are looking for.

For more information, read 

    |f|
    |F|
    |t|
    |T|
    |;|
    |,|

 								*faq-11.17*
11.17. How do I replace a tab (or any other character) with a hard return
       (newline) character?

You can replace a tab (or any other character) with a hard return (newline)
character using the following command: >

    :s/\t/\r/
<
Note that in the above command, if you use \n instead of \r, then the tab
characters will not be replaced by a new-line character.

For more information, read 

    |sub-replace-special|
    |NL-used-for-Nul|
    |CR-used-for-NL|

 								*faq-11.18*
11.18. How do I search for a character by its ASCII value?

You can search for a character by its ASCII value by pressing CTRL-V
followed by the decimal or hexadecimal or octal value of that character in
the search "/" command.  To determine the ASCII value of a character you
can use the ":ascii" or the "ga" command.

For example, to search for the ASCII character with value 188 (??), you can
use one of the following search commands: >

    /<CTRL-V>188
    /<CTRL-V>o274
    /<CTRL-V>xBC
    /<CTRL-V>u00bc
<
You can also search for the character with the decimal/octal/hex number
using a collation [] like this: >

    /[\d188]
    /[\o274]
    /[\xbc]
    /[\u00bc]
<
Or you use digraphs to enter the character. For example enter: >

    /CTRL-K14
<
to search for the above character.

For more information, read 

    |i_CTRL-V_digit|
    |:ascii|
    |ga|
    |/\]|
    |digraphs|

 								*faq-11.19*
11.19. How do I search for long lines?

You can search for long lines or lines containing more than a specific
number of characters using the Vim regular-expressions in the search
command. For example, to search for all the lines containing more than 80
characters, you can use one of the following commands: >

    /^.\{80}.\+$
    /^.*\%>80c.*$
    /^.*\%>80v.*$
<
For more information, read 

    |/\{|
    |/\%c|
    |/\%v|

 								*faq-11.20*
11.20. How do I display all the lines in the current buffer that contain a
       specified pattern?

You can use the following command to display all the lines in the current
buffer that contain a specified pattern: >

    :g/<pattern>/p
<
For example, the following command will display all the lines in the
current buffer that contain "vim": >

    :g/vim/p
<
Since :p is the default command to be executed for the ex command :g, you
can also use: >

    :g/vim
<
If you also want the corresponding line numbers, then you can use the
following command: >

    :g/<pattern>/#
<
For more information, read 

    |:global|
    |:print|
    |:number|

 								*faq-11.21*
11.21. How do I search for a text string that spans multiple lines?

You can search for a text string that spans multiple lines using the \_x
regular expression atom. For example, to search for the text string "Hello
World", you can use the following search command: >

    /Hello\_sWorld
<
This will match the word "Hello" followed by a newline character and then
the word "World" at the beginning of the next line. This will also match
the word "Hello" immediately followed by a space character and then the
word "World". When searching for the "Hello World" string, to include the
space characters at the end and beginning of the line, you can use the
following search command: >

    /Hello\_s\+World
<
For more information, read 

    |27.8|
    |pattern-atoms|
    |/\_|
    |pattern-searches|

 								*faq-11.22*
11.22. How do I search for a pattern within the specified range of lines
       in a buffer?

You can search for a pattern within a range of lines using the \%>l
and \%<l regular expression atoms.

For example, to search for the word 'white' between the lines 10 and 30 in
a buffer, you can use the following command: >

    /white\%>9l\%<31l
<
For more information, read 

    |/\%l|

 								*faq-11.23*
11.23. How do I clear the last searched pattern?

The last searched pattern is stored in the "/" register. You can clear
this register using the following command: >

    :let @/=""
<
To clear the last search pattern whenever a buffer is unloaded, you can use
the following command: >

    :autocmd BufUnload * let @/ = ""
<
For more information, read 

    |@/|
    |let-@|
    |autocmd-searchpat|
    |last-pattern|

=============================================================================
 								*faq-12*
SECTION 12 - CHANGING TEXT

 								*faq-12.1*
12.1. How do I delete all the trailing white space characters (SPACE and
      TAB) at the end of all the lines in a file?

You can use the ":substitute" command on the entire file to search and
remove all the trailing white space characters: >

    :%s/\s\+$//
<
For more information, read 

    |:%|
    |:s|
    |/\s|
    |/\+|
    |/$|

 								*faq-12.2*
12.2. How do I replace all the occurrences of multiple consecutive space
      characters to a single space?

You can use the following command to replace all the occurrences of
multiple consecutive space characters to a single space: >

    :%s/ \{2,}/ /g
<
alternatively use: >

    :%s/  \+/ /g
<
For more information, read 

    |:%|
    |:s|
    |/\{|
    |:s_flags|

 								*faq-12.3*
12.3. How do I reduce a range of empty lines into one line only?

You can use the following command to reduce a range of empty lines into one
line only: >

    :v/./.,/./-1join
<
The explanation for this command is below: >

    :v/./           Execute the following command for all lines not
                    containing a character (empty lines).
         .,         Use the current line as the start of the range of
                    lines.
           /./      Use the line containing a character as the last line.
              -1    Adjust the range of lines to end with the line before
                    the last line.
                j   Join the lines in the range.
<
Note that this will give an error message if the empty lines are at the end
of the file. To correct this, you have to add a temporary line at the end
of the file, execute the command and then remove the temporary line.

For more information, read 

    |:v|
    |:join|
    |cmdline-ranges|
    |collapse|

 								*faq-12.4*
12.4. How do I delete all blank lines in a file? How do I remove all the
      lines containing only space characters?

To remove all blank lines, use the following command: >

    :g/^$/d
<
To remove all lines with only whitespace (spaces or tabs) in them, use the
following command: >

    :g/^\s\+$/d
<
To remove all the lines with only whitespace, if anything, use the
following command: >

    :g/^\s*$/d
<
 								*faq-12.5*
12.5. How do I copy/yank the current word?

You can use the "yiw" (yank inner word without whitespace) command or the
"yaw" (yank a word with whitespace) command to copy/yank the current
word.

For more information, read 

    |04.6|
    |04.8|
    |iw|
    |yank|
    |text-objects|
    |objects|

 								*faq-12.6*
12.6. How do I yank text from one position to another position within a
      line, without yanking the entire line?

You can specify a motion command with the yank operator (y) to yank text
from one position to another position within a line. For example, to yank
from the current cursor position till the next letter x, use yfx or Fx or
tx or Tx. To yank till the nth column, use n|. To yank till the next
occurrence of a 'word', use /word. To do a yank till the nth column on
another line, first mark the position using the 'ma' command, go to the
start of the yank position, and then yank till the mark using y`a (note the
direction of the quote)

For more information, read 

    |yank|
    |motion.txt|
    |4.6|

 								*faq-12.7*
12.7. When I yank some text into a register, how do I append the text to
      the current contents of the register?

When you specify the register for some operation, if you use the upper-case
for the register name, then the new text will be appended to the existing
contents. For example, if you have some text in the register "a". If you
want to append some new text to this, you have to use the "A" register
name. If you use the lowercase register name, then the contents of the
register will be overwritten with the new text.

For more information, read 

    |quote|
    |quote_alpha|
    |10.1|

 								*faq-12.8*
12.8. How do I yank a complete sentence that spans over more than one line?

To yank a complete sentence that spans over more than one line you have to
use the yank operator followed by a motion command. For example: >

        y)
<
From inside the sentence you can use 'yi)' to yank the sentence.

For more information, read 

    |yank|
    |{motion}|
    |object-motions|
    |4.6|

 								*faq-12.9*
12.9. How do I yank all the lines containing a pattern into a buffer?

You can use the ":global" command to yank all the lines containing the
pattern into a register and then paste the contents of the register into
the buffer: >

    :let @a=''
    :g/mypattern/y A
<
The first command, clears the contents of the register "a". The second
command copies all the lines containing "mypattern" into the register "a".
Note that the capital letter "A" is used to append the matched lines. Now
you can paste the contents of register "a" to a buffer using "ap command.
For more information, read 

    |:g|
    |:y|
    |let-register|
    |quote_alpha|
    |put|
    |registers|
    |:registers|

 								*faq-12.10*
12.10. How do I delete all the lines in a file that do not contain a
       pattern?

You can use ":v" command to delete all the lines that do not contain a
pattern: >

    :v/pattern/d
<
or >

    :g!/pattern/d
<
For more information, read 

    |:v|
    |:g|

 								*faq-12.11*
12.11. How do I add a line before each line with "pattern" in it?

You can use the following command to add a line before each line with
"pattern" in it: >

    :g/pattern/normal Oi<line of text goes here>
<
Alternatively you can yank the line using the Y command and then insert the
line using the following command: >

    :g/pattern/put!
<
For more information, read 

    |:g|
    |:put|
    |insert|
    |0|

 								*faq-12.12*
12.12. Is there a way to operate on a line if the previous line contains a
       particular pattern?

You can use the ":global" command to operate on a line, if the previous
line contains a particular pattern: >

    :g/<pattern>/+{cmd}
<
For more information, read 

    |:g|
    |:range|

 								*faq-12.13*
12.13. How do I execute a command on all the lines containing a pattern?

You can use the ":global" (:g) command to execute a command on all the
lines containing a pattern. >

    :g/my pattern/d
<
If you want to use a non-Ex command, then you can use the ":normal"
command: >

    :g/my pattern/normal {command}
<
Unless you want the normal mode commands to be remapped, consider using a
":normal!" command instead (note the "!").

For more information, read 

    |:global|
    |:v|
    |:normal|

 								*faq-12.14*
12.14. Can I copy the character above the cursor to the current cursor
       position?

In Insert mode, you can copy the character above the cursor to the current
cursor position by typing <Ctrl-Y>. The same can be done with the
characters below the cursor by typing <Ctrl-E>.

For more information, read 

    |i_CTRL-Y|
    |i_CTRL-E|

 								*faq-12.15*
12.15. How do I insert a blank line above/below the current line without
       entering insert mode?

You can use the ":put" ex command to insert blank lines. For example, try >

    :put =''
    :put! =''
<
For more information, read 

    |:put|

 								*faq-12.16*
12.16. How do I insert the name of the current file into the current buffer?

There are several ways to insert the name of the current file into the
current buffer. In insert mode, you can use the <C-R>% or the
<C-R>=expand("%") command. In normal mode, you can use the ":put =@%"
command.

For more information, read 

    |i_CTRL-R|
    |expand()|
    |!!|

 								*faq-12.17*
12.17. How do I insert the contents of a Vim register into the current
       buffer?

In insert mode, you can use the <C-R><register> command to insert the
contents of <register>. For example, use <C-R>a to insert the contents
of register "a" into the current buffer.

In normal mode, you can use the ":put <register>" command to insert the
contents of <register>. For example, use the ":put d" command to insert
the contents of register "d" into the current buffer.

For more information, read 

    |i_CTRL-R|
    |:put|

 								*faq-12.18*
12.18. How do I move the cursor past the end of line and insert some
       characters at some columns after the end of the line?

You can set the "virtualedit" option to move the cursor past the
end-of-line and insert characters in a column after the end-of-line. To
start the virtual mode, use >

    :set virtualedit=all
<
For more information, read 

    |'virtualedit'|

 								*faq-12.19*
12.19. How to replace the word under the cursor (say: junk) with
      "foojunkbar" in Vim?

There are several ways to do this. If the word is the first such word on
the line, use the following command: >

    :exe "s/".expand("<cword>")."/foo&bar/"
<
To match specifically you could use a more complex substitution like this: >

    :exe 's/\<'.expand("<cword>").'\%>'.(col(".")-1).'c\>/foo&bar/'
<
You can also use the command: ciwfoo<C-R>"bar<Esc>

For more information, read 

    |:substitute|
    |expand()|
    |col()|
    |/\%c|

 								*faq-12.20*
12.20. How do I replace a particular text in all the files in a directory?

You can use the "argdo" command to execute the substitute command on all
the files specified as arguments: >

    :args *
    :argdo %s/<your_text>/<replacement_text>/ge | update
<
For more information, read 

    |:args_f|
    |:argdo|
    |:s_flags|

 								*faq-12.21*
12.21. I have some numbers in a file. How do I increment or decrement the
       numbers in the file?

You can use the CTRL-A key to increment the number and the CTRL-X key to
decrement the number. You can also specify the number to
increment/decrement from the number by specifying a count to the key. This
works for decimal, octal and hexadecimal numbers. You can change the base
used by Vim for this operation by modifying the 'nrformats' option.

For more information, read 

    |26.2|
    |CTRL-A|
    |CTRL-X|
    |'nrformats'|

 								*faq-12.22*
12.22. How do I reuse the last used search pattern in a ":substitute"
       command?

To reuse the last used search pattern in a ":substitute" command, don't
specify a new search pattern: >

    :s/pattern/newtext/
    :s//sometext/
<
In the second ":s" command, as a search pattern is not specified, the
pattern specified in the first ":s" command 'pattern' will be used.

If you want to change the search pattern but repeat the substitution
pattern you can use the special right hand side, you can use the tilde
character: >

    :s/newpattern/~/
<
For more information, read 

    |:s|
    |:&|
    |:~|
    |&|
    |sub-replace-special|

 								*faq-12.23*
12.23. How do I change the case of a string using the ":substitute"
       command?

You can use special characters in the replacement string for a
":substitute" command to change the case of the matched string. For
example, to change the case of the string "MyString" to all uppercase, you
can use the following command: >

    :%s/MyString/\U&/g
<
To change the case to lowercase, you can use the following command: >

    :%s/MyString/\L&/g
<
To change the case of the first character in all the words in the current
line to uppercase, you can use the following command: >

    :s/\<\(.\)\(\k*\)\>/\u\1\L\2/g
<
For more information, read 

    |sub-replace-special|
    |:substitute|
    |\U|
    |\L|
    |\u|

 								*faq-12.24*
12.24. How do I enter characters that are not present in the keyboard?

You can use digraphs to enter characters that are not present in the
keyboard. You can use the ":digraphs" command to display all the currently
defined digraphs. You can add a new digraph to the list using the
":digraphs" command.

For more information, read 

    |digraphs|
    |'digraphs'|
    |24.9|

 								*faq-12.25*
12.25. Is there a command to remove any or all digraphs?

No. The digraphs table is defined at compile time. You can only add new
ones. Adding a command to remove digraphs is on the todo list.

 								*faq-12.26*
12.26. In insert mode, when I press the backspace key, it erases only the
       characters entered in this instance of insert mode. How do I erase
       previously entered characters in insert mode using the backspace
       key?

This is traditional vi behaviour. You can set the 'backspace' option to
erase previously entered characters in insert mode: >

    :set backspace=indent,eol,start
<
For more information, read 

    |'backspace'|
    |i_backspacing|

 								*faq-12.27*
12.27. I have a file which has lines longer than 72 characters terminated
       with "+" and wrapped to the next line. How can I quickly join the
       lines?

You can use the ":global" command to search and join the lines: >

    :g/+$/j
<
This will, however, only join every second line. A couple of more complex
examples which will join all consecutive lines with a "+" at the end are: >

    :g/*$/,/\(^\|[^+]\)$/j
    :g/+$/mark a | .,/\(^\|[^+]\)$/s/+$// | 'a,.j
<
For more information, read 

    |:g|
    |:j|
    |:mark|

 								*faq-12.28*
12.28. How do I paste characterwise yanked text into separate lines?

You can use the ":put" command to paste characterwise yanked text into new
lines: >

    :put =@"
<
For more information, read 

    |:put|
    |quote_=|

 								*faq-12.29*
12.29. How do I change the case (uppercase, lowercase) of a word or a
       character or a block of text?

You can use the "~" command to switch the case of a character.

You can change the case of the word under the cursor to uppercase using the
"gUiw" or "viwU" command and to lowercase using the "guiw" or "viwu"
command.

You can switch the case (upper case to lower case and vice versa) of the
word under the cursor using the "viw~" or "g~iw" command.

You can use the "gUgU" command to change the current line to uppercase and
the "gugu" command to change the current line to lowercase.

You can use the "g~g~" command to switch the case of the current line. You
can use the "g~{motion}" or "{Visual}~" commands to switch the case of a
block of text.

If you set 'tildeop' the "~" command behaves like an operator and expects
a motion command to act on. If you have 

    :set tildeop
    
and you want to change the case from the current cursor position to the end
of line, simply use "~$".

For more information, read 

    |case|
    |'tildeop'|

 								*faq-12.30*
12.30. How do I enter ASCII characters that are not present in the
       keyboard?

You can enter ASCII characters that are not present in the keyboard by
pressing CTRL-V and then the ASCII character number. You can also use
digraphs to enter special ASCII characters.

For more information, read 

    |i_CTRL-V_digit|
    |digraphs|
    |45.5|

 								*faq-12.31*
12.31. How do I replace non-printable characters in a file?

To replace a non-printable character, you have to first determine the ASCII
value for the character. You can use the ":ascii" ex command or the "ga"
normal-mode command to display the ASCII value of the character under the
cursor.

You can enter the non-printable character by entering CTRL-V followed by
the decimal number 1-255 (with no leading zero), or by x and a hex number
00-FF, or by an octal number 0-0377 (with leading zero), or by u and a hex
number 0-FFFF, or by U and a hex number 0-7FFFFFFF

Another alternative is to use the ":digraphs" ex command to display the
digraphs for all characters, together with their value in decimal and
alpha. You can enter a non-printable character by entering CTRL-K followed
by two alphanumeric characters (a digraph).

For more information, read 

    |:ascii|
    |i_CTRL-V|
    |i_CTRL-V_digit|
    |:digraphs|

 								*faq-12.32*
12.32. How do I remove duplicate lines from a buffer?

You can use the following user-defined command to remove all the duplicate
lines from a buffer:

:command -range=% Uniq <line1>,<line2>g/^\%<<line2>l\(.*\)\n\1$/d

Add the above command to your .vimrc file and invoke ":Uniq" to remove all
the duplicate lines.

 								*faq-12.33*
12.33. How do I prefix all the lines in a file with the corresponding line
       numbers?

You can prefix the lines in a file with the corresponding line number in
several ways. Some of them are listed below: >

    :%s/^/\=line('.'). ' '
    :%s/^/\=printf('%5d ', line('.'))/
    :%s/^/\=strpart(line('.').'.     ', 0, 5)
    :%s/^/\=strpart('   ', strlen(line('.'))).line('.').'. '
<
The last two commands will pad the line numbers with space characters.  The
last command will right align the numbers and the command before that will
left align the numbers.

For more information, read 

    |sub-replace-special|
    |line()|
    |expr6|
    |strpart()|
    |printf()|
    |:execute|
    |:global|
 								*faq-12.34*
12.34. How do I exchange (swap) two characters or words or lines?

You can exchange two characters with the "xp" command sequence. The 'x'
will delete the character under the cursor and 'p' will paste the just
deleted character after the character under the cursor. This will result
in exchanging the two characters.

You can exchange two words with the "deep" command sequence (start with the
cursor in the blank space before the first word).

You can exchange two lines with the "ddp" command sequence. The 'dd' will
delete the current line and 'p' will paste the just deleted line after the
current line. This will result in exchanging the two lines. 

All of the above operations will change the " unnamed register.

You can use the ":m +" ex command to exchange two lines without changing the
unnamed register.

For more information, read 

    |x|
    |p|
    |dd|
    |d|
    |e|
    |linewise-register|
    |quotequote|
    |:move|

 								*faq-12.35*
12.35. How do I change the characters used as word delimiters?

Vim uses the characters specified by the 'iskeyword' option as word
delimitiers. The default setting for this option is "@,48-57,_,192-255".

For example, to add ':' as a word delimitier, you can use >

    :set iskeyword+=:
<
To remove '_' as a word delimitier, you can use >

    :set iskeyword-=_
<
For more information, read 

    |'iskeyword'|
    |word|

=============================================================================
 								*faq-13*
SECTION 13 - COMPLETION IN INSERT MODE

 								*faq-13.1*
13.1. How do I complete words or lines in insert mode?

In insert mode, you can complete words using the CTRL-P and CTRL-N keys.
The CTRL-N command searches forward for the next matching keyword.
The CTRL-P command searches backwards for the next matching keyword.

In insert mode, you can use the CTRL-X CTRL-L command sequence to complete
lines that starts with the same characters as in the current line before
the cursor. To get the next matching line, press the CTRL-P or CTRL-N keys.
There are a lot of other keys/ways available to complete words in insert
mode.

Vim supports completion of the following items: >

    CTRL-X CTRL-L    whole lines
    CTRL-X CTRL-N    keywords in the current file
    CTRL-X CTRL-K    words from a dictionary
    CTRL-X CTRL-T    words from a thesaurus
    CTRL-X CTRL-I    current and included files
    CTRL-X CTRL-]    tags
    CTRL-X CTRL-F    file names
    CTRL-X CTRL-D    macro definitions (also in included files)
    CTRL-X CTRL-V    Vim command line
    CTRL-X CTRL-U    User defined completion
    CTRL-X CTRL-O    Omni completion
<
User defined completions and omni completions are often set by filetype
plugins.

For more information, read 

    |24.3|
    |ins-completion|

 								*faq-13.2*
13.2. How do I complete file names in insert mode?

In insert mode, you can use the CTRL-X CTRL-F command sequence to complete
filenames that start with the same characters as in the current line before
the cursor.

For more information, read 

    |compl-filename|

 								*faq-13.3*
13.3. I am using CTRL-P/CTRL-N to complete words in insert mode. How do I
      complete words that occur after the just completed word?

You can use CTRL-X CTRL-N and CTRL-X CTRL-P keys to complete words that are
present after the just completed word.

For more information, read 

    |i_CTRL-X_CTRL-P|
    |i_CTRL-X_CTRL-N|
    |ins-completion|

=============================================================================
 								*faq-14*
SECTION 14 - TEXT FORMATTING

 								*faq-14.1*
14.1. How do I format a text paragraph so that a new line is inserted at
      the end of each wrapped line?

You can use the 'gq' command to format a paragraph. This will format the
text according to the current 'textwidth' setting. An alternative would be
to use the 'gw' command that formats like 'gq' but does not move the
cursor.

Note that the gq operator can be used with a motion command to operate on a
range of text. For example: >

    gqgq - Format the current line
    gqap - Format current paragraph
    gwap - Format current paragraph (and don't move cursor)
    gq3j - Format the current and the next 3 lines
<
For more information, read 

    |gq|
    |gw|
    |formatting|
    |usr_25.txt|
    |motion.txt|

 								*faq-14.2*
14.2. How do I format long lines in a file so that each line contains less
      than 'n' characters?

You can set the 'textwidth' option to control the number of characters that
can be present in a line. For example, to set the maximum width of a line
to 70 characters, you can use the following command: >

    set textwidth=70
<
Now to break the long lines in a file to the length defined by the
'textwidth' option, you can use >

    :g/./normal gqq
<
For more information, read 

    |'textwidth'|
    |gq|

 								*faq-14.3*
14.3. How do I join short lines to form a paragraph?

First, make sure the 'textwidth' option is set to a high value: >

    :set textwidth=99999
<
Next, join the short lines to form a paragraph using the command: >

    1GgqG
<
The above command will operate on the entire file. To do the formatting on
all paragraphs in a specific range, use: >

    :'a,'bg/\S/normal gq}
<
For more information, read 

    |gq|
    |G|
    |gqq|

 								*faq-14.4*
14.4. How do I format bulleted and numbered lists?

You can configure Vim to format bulleted and numbered lists using the
'formatoptions' option. For example, you can format the list of the
following format:

  - this is a test. this is a test. this is a test. this is a test.
  this is a test.

into this format:

  - this is a test. this is a test. this is a test. this is a test.
    this is a test.

You can use the 'n' flag in the 'formatoptions' to align the text. >

    :set fo+=n
<
With this option, when formatting text, Vim will recognize numbered lists.
For this option to work, the 'autoindent' option also must be set.

For more information, read 

    |'formatoptions'|
    |fo-table|
    |format-comments|

 								*faq-14.5*
14.5. How do I indent lines in insert mode?

In insert mode, you can press the CTRL-T key to insert one shiftwidth of
indent at the start of the current line. In insert mode, you can use the
CTRL-D key to delete on shiftwidth of indent at the start of the current
line. You can also use the CTRL-O >> and CTRL-O << commands to indent the
current line in insert mode.

For more information, read 

    |i_CTRL-T|
    |i_CTRL-D|
    |i_0_CTRL-D|
    |i_CTRL-O|
    |>>|
    |<<|

 								*faq-14.6*
14.6. How do I format/indent an entire file?

You can format/indent an entire file using the gg=G command, where >

    gg - Goto the beginning of the file
    =  - apply indentation
    G  - till end of file
<
For more information, read 

    |gg|
    |=|
    |G|
    |'formatprg'|
    |C-indenting|

 								*faq-14.7*
14.7. How do I increase or decrease the indentation of the current line?

You can use the '>>' and '<<' commands to increase or decrease the
indentation of the current line.

For more information, read 

    |shift-left-right|
    |>>|
    |<<|
    |'shiftwidth'|

 								*faq-14.8*
14.8. How do I indent a block/group of lines?

You can visually select the group of lines and press the > or < key to
indent/unindent the lines. You can also use the following ex-command to
indent the lines >

    :10,20>
<
For more information, read 

    |shift-left-right|
    |v_>|
    |v_<|
    |:<|
    |:>|

 								*faq-14.9*
14.9. When I indent lines using the > or < key, the standard 8-tabstops are
     used instead of the current 'tabstop' setting. Why?

The number of spaces used when lines are indented using the ">" operator is
controlled by the 'shiftwidth' option. The 'tabstop' setting is not used
for indentation. To change the amount of spaces used for indentation, use
the command: >

    :set shiftwidth=4
<
For more information, read 

    |'shiftwidth'|
    |>>|
    |'softtabstop'|

 								*faq-14.10*
14.10. How do I turn off the automatic indentation of text?

By default, the automatic indentation of text is not turned on. Check the
configuration files (.vimrc, .gvimrc) for settings related to indentation.
Make sure the ":filetype indent on" command is not present. If it is
present, remove it. Also, depending on your preference, you may also want
to check the value of the 'autoindent', 'smartindent', 'cindent' and
'indentexpr' options and turn them off as needed.

For more information, read 

    |:filetype-indent-off|
    |'autoindent'|
    |'smartindent'|
    |'cindent'|
    |'indentexpr'|

 								*faq-14.11*
14.11. How do I configure Vim to automatically set the 'textwidth' option
       to a particular value when I edit mails?

You can use the 'FileType' autocommand to set the 'textwidth' option: >

    autocmd FileType mail set tw=<your_value>
<
For more information, read 

    |:autocmd|
    |FileType|
    |usr_43.txt|

 								*faq-14.12*
14.12. Is there a way to make Vim auto-magically break lines?

Yes. Set the 'textwidth' option to the preferred length for a line. Then
Vim will auto-magically break the newly entered lines. For example: >

    :set textwidth=75
<
For more information, read 

    |'textwidth'|
    |ins-textwidth|
    |'formatoptions'|
    |fo-table|
    |formatting|

 								*faq-14.13*
14.13. I am seeing a lot of ^M symbols in my file. I tried setting the
       'fileformat' option to 'dos' and then 'unix' and then 'mac'. None of
       these helped. How can I hide these symbols?

When a file is loaded in Vim, the format of the file is determined as
below:

- If all the lines end with a new line (<NL>), then the fileformat is
  'unix'.
- If all the lines end with a carriage return (<CR>) followed by a new line
  (<NL>), then the fileformat is 'dos'.
- If all the lines end with carriage return (<CR>), then the fileformat is
  'mac'.

If the file has some lines ending with <CR> and some lines ending with <CR>
followed by a <NL>, then the fileformat is set to 'unix'.

You can change the format of the current file, by saving it explicitly in
dos format: >

    :w ++ff=dos
<
To display the format of the current file, use >

    :set fileformat?
<
The above behavior is also controlled by the 'fileformats' option. You can
try the following commands: >

    :set fileformats+=unix
    :e <your_file>
    :set fileformat=unix
    :w
<
To remove the carriage return (<CR>) character at the end of all the lines
in the current file, you can use the following command: >

    :%s/\r$//
<
To force Vim to use a particular file format, when editing a file, you can
use the following command: >

    :e ++ff=dos filename
<
For more information, read 

    |'fileformats'|
    |'fileformat'|
    |file-formats|
    |DOS-format-write|
    |Unix-format-write|
    |Mac-format-write|
    |dos-file-formats|
    |23.1|
    |++ff|

 								*faq-14.14*
14.14. When I paste some text into a Vim buffer from another application,
      the alignment (indentation) of the new text is messed up. How do I
      fix this?

The indentation of the text is messed up due to various Vim settings
related to indentation (like autoindent, smartindent, textwidth etc).
Before pasting text into Vim, you can set the 'paste' option: >

    :set paste
<
After pasting the text, you can turn off the option using: >

    :set nopaste
<
You can also toggle the paste option using: >

    :set paste!
<
If you can access the clipboard through the * register, then you can paste
the text without indentation using CTRL-R CTRL-O *.

For more information, read 

    |'paste'|
    |'pastetoggle'|
    |i_CTRL-R_CTRL_O|
    |clipboard|
    |xterm-clipboard|
    |gui-clipboard|

 								*faq-14.15*
14.15. When there is a very long wrapped line (wrap is "on") and a line
      doesn't fit entirely on the screen it is not displayed at all. There
      are blank lines beginning with '@' symbol instead of wrapped line. If
      I scroll the screen to fit the line the '@' symbols disappear and the
      line is displayed again. What Vim setting control this behavior?

You can set the 'display' option to 'lastline' to display as much as
possible of the last line in a window instead of displaying the '@'
symbols. >

    :set display=lastline
<
For more information, read 

    |'display'|

 								*faq-14.16*
14.16. How do I convert all the tab characters in a file to space
       characters?

You can use the ":retab" command to update all the tab characters in the
current file with the current setting of 'expandtab' and 'tabstop'. For
example, to convert all the tabs to white spaces, use >

    :set expandtab
    :retab
<
For more information, read 

    |:retab|
    |'expandtab'|
    |'tabstop'|
    |25.3|

 								*faq-14.17*
14.17. What Vim options can I use to edit text that will later go to a word
       processor?

You can set the following options to edit text that will later go into a
word processor: >

    :set wrap
    :set linebreak
    :set textwidth=0
    :set showbreak=>>>
<
You can use the 'gk' and 'gj' commands to move one screen line up and down.
For more information, read 

    |'wrap'|
    |'linebreak'|
    |'textwidth'|
    |'showbreak'|
    |gk|
    |gj|

 								*faq-14.18*
14.18. How do I join lines without adding or removing any space characters?

By default, when you join lines using the "J" or ":join" command, Vim will
replace the line break, leading white space and trailing white space with a
single space character. If there are space characters at the end of a line
or a line starts with the ')' character, then Vim will not add a space
character.

To join lines without adding or removing any space characters, you can use
the gJ or ":join!" commands.

For more information, read >

    |gJ|
    |:join|
    |J|
    :hep 10.5
    |'joinspaces'|
    |'cpoptions'|
    |'formatoptions'|
<

=============================================================================
 								*faq-15*
SECTION 15 - VISUAL MODE

 								*faq-15.1*
15.1. How do I do rectangular block copying?

You can do rectangular block copying in Vim using the blockwise visual
mode. To start blockwise visual mode use the CTRL-V key. Move the cursor
using any of the motion commands and then use the y operator to yank to
visually selected text.

If CTRL-V does not work as expected, it may have been remapped to CTRL-Q by
the mswin.vim script which is often sourced by a vimrc on Windows machines
to mimic some common short cuts from other programs.

For more information, read 

    |04.4|
    |blockwise-visual|
    |visual-mode|
    |Q_vi|

 								*faq-15.2*
15.2. How do I delete or change a column of text in a file?

You can use the Vim block-wise visual mode to select the column of text and
apply an operator (delete, change, copy, etc) on it.

For more information, read 

    |visual-block|
    |visual-operators|

 								*faq-15.3*
15.3. How do I apply an ex-command on a set of visually selected lines?

When you select a range of lines in visual mode, the < register is set to
the start of the visual region and the > register is set to the end of the
visual region. You can use these registers to specify the range for an ex
command. After visually selecting the lines, press ":" to go to the command
mode.  Vim will automatically insert the visual range '<,'>. You can run
any ex-command on the visual range.

For more information, read 

    |v_:|
    |'<|
    |'>|

 								*faq-15.4*
15.4. How do I execute an ex command on a column of text selected in Visual
      block mode?

All the ex commands operate on whole lines only. If you try to execute an
ex command on a column of text selected in visual block mode, Vim will
operate on all the selected lines (instead of the selected columns). You
can use the vis.vim plugin script from http://vim.sourceforge.net scripts
archive to do this.

For more information, read 

    |cmdline-ranges|
    |10.3|
    |cmdline-lines|

 								*faq-15.5*
15.5. How do I select the entire file in visual mode?

You can select the entire file in visual mode using ggVG. >

    gg - go to the beginning of the file.
    V  - Start linewise visual mode
    G  - goto the end of the file.
<
For more information, read 

    |gg|
    |linewise-visual|
    |G|

 								*faq-15.6*
15.6. When I visually select a set of lines and press the > key to indent
      the selected lines, the visual mode ends. How can I reselect the
      region for further operation?  (or) How do I re-select the last
      selected visual area again?

You can use the 'gv' command to reselect the last selected visual area. You
can also use the marks '< and '> to jump to the beginning or the end of the
last selected visual area.

For more information, read 

    |gv|
    |'<|
    |'>|

 								*faq-15.7*
15.7. How do I jump to the beginning/end of a visually selected region?

You can use the 'o' command to jump to the beginning/end of a visually
selected region.

For more information, read 

    |v_o|

 								*faq-15.8*
15.8. When I select text with mouse and then press : to enter an ex
      command, the selected text is replaced with the : character. How do I
      execute an ex command on a text selected using the mouse similar to
      the text selected using the visual mode?

This will happen if you have configured Vim to use select mode instead of
Visual mode by setting the 'selectmode' option. Check the value of this
option: >

    :set selectmode?
<
This mode is known as selectmode and is similar to the visual mode. This
option is also automatically set when you use the "behave mswin" command.
Select mode looks like visual mode, but it is similar to the selection mode
in MS-Windows.

For more information, read 

    |Select-mode|
    |'selectmode'|
    |9.4|
    |:behave|

 								*faq-15.9*
15.9. When I select a block of text using the mouse, Vim goes into
      selection mode instead of Visual mode. Why?

The 'selectmode' option controls whether Select mode will be started when
selecting a block of text using the mouse. To start Visual mode when
selecting text using mouse, remove the 'mouse' value from the 'selectmode'
option: >

    :set selectmode-=mouse
<
Note that by default, the 'selectmode' option will be set to empty, so that
always visual mode is used.

For more information, read 

    |'selectmode'|
    |Select-mode|
    |:behave|

 								*faq-15.10*
15.10. How do I visually select the last copy/pasted text?

You can use the '[ and '] marks to visually select the last copy/pasted
text. The '[ mark is set to the beginning of the last changed/yanked text
and the '] mark is set to the end of the last changed/yanked text. To
visually select this block of text use the command '[v']

For more information, read 

    |'[|
    |']|
    |`a|
    |v|

=============================================================================
 								*faq-16*
SECTION 16 - COMMAND-LINE MODE

 								*faq-16.1*
16.1. How do I use the name of the current file in the command mode or an
      ex command line?

In the command line, the '%' character represents the name of the current
file. In some commands, you have to use expand("%") to get the filename: >

    :!perl %
<
Another example is to load the latex generated pdf file from the file you
are currently editing: >

    :!xpdf %<.pdf
<
For more information, read 

    |:_%|
    |cmdline-special|
    |expand()|

 								*faq-16.2*
16.2. How do I edit the text in the Vim command-line effectively?

You can use the command-line window for editing Vim command-line text. To
open the Vim command-line window use the "q:" command in normal mode. In
command-line mode, use the CTRL-F key. In this window, the command line
history will be displayed. You can use normal Vim keys/commands to edit any
previous/new command line. To execute a command line, press the
enter/return key.

In a similar vain, the search history can be edited with "q/" and "q?"
commands.

For more information, read 

    |cmdline-window|

 								*faq-16.3*
16.3. How do I switch from Vi mode to Ex mode?

You can use the Q command to switch from Vi mode to Ex mode. To switch from
Ex mode back to the Vi mode, use the :vi command.

For more information, read 

    |Q|
    |gQ|
    |Ex-mode|
    |:vi|

 								*faq-16.4*
16.4. How do I copy the output from an ex-command into a buffer?

To copy the output from an ex-command into a buffer, you have to first get
the command output into a register. You can use the ":redir" command to get
the output into a register. For example, >

    :redir @a
    :g/HelloWord/p
    :redir END
<
Now the register 'a' will contain the output from the ex command
"g/HelloWord/p". Now you can paste the contents of the register 'a' into a
buffer. You can also send or append the output of an ex-command into a file
using the 'redir' command.

You can prefix the ":global" command with ":silent", to avoid having the
lines printed to the screen.

To redirect the output from an ex-command to a file, you can use the
following set of commands: >

    :redir > myfile
    :g/HelloWord/p
    :redir END
<
For more information, read 

    |:redir|
    |:silent|

 								*faq-16.5*
16.5. When I press the tab key to complete the name of a file in the
      command mode, if there are more than one matching file names, then
      Vim completes the first matching file name and displays a list of all
      matching filenames. How do I configure Vim to only display the list
      of all the matching filenames and not complete the first one?

You can modify the 'wildmode' option to configure the way Vim completes
filenames in the command mode. In this case, you can set the 'wildmode'
option to 'list': >

    :set wildmode=list
<
For more information, read 

    |'wildmode'|

 								*faq-16.6*
16.6. How do I copy text from a buffer to the command line and from the
      command line to a buffer?

To copy text from a buffer to the command line, after yanking the text from
the buffer, use Ctrl-R 0 in the command line to paste the text. You can
also yank the text to a specific register and use CTRL-R <register> to
paste the text to the command line.  You can use CTRL-R CTRL-W to paste the
word under the cursor in the command line.

To copy text from the command line into a buffer, you can paste the
contents of the : register using the ":p command. The most recently
executed command line is stored in the : register.

Another approach for copying and pasting text to and from the command line
is to open the command line window using q: from normal mode or CTRL-F from
the command-line mode. In the command line window you can use all the Vim
commands to edit the command line.

For more information, read 

    |c_CTRL-R|
    |quote_:|
    |cmdline-window|

 								*faq-16.7*
16.7. How do I put a command onto the command history without executing it?

To put a command onto the command history without executing it, press the
<Esc> key to cancel the command.

An alternative solution, is to use the histadd() function like this: >

    :call histadd(':', 'echo strftime("%c")')
<
For more information, read 

    |c_<Esc>|
    |histadd()|

 								*faq-16.8*
16.8. How do I increase the height of the command-line?

You can increase the height of the command-line by changing the 'cmdheight'
option: >

    :set cmdheight=2
<
For more information, read 

    |'cmdheight'|
    |hit-enter|
    |05.7|

=============================================================================
 								*faq-17*
SECTION 17 - VIMINFO

 								*faq-17.1*
17.1. When I invoke Vim, I get error messages about illegal characters in
      the viminfo file. What should I do to get rid of these messages?

You can remove the $HOME/.viminfo or the $HOME/_viminfo file to get rid of
these error messages.

For more information, read 

    |viminfo-errors|
    |viminfo-file-name|
    |viminfo|
    |21.3|

 								*faq-17.2*
17.2. How do I disable the viminfo feature?

By default, the viminfo feature is disabled. If the viminfo feature is
enabled by a system-wide vimrc file, then you can disable the viminfo
feature by setting the 'viminfo' option to an empty string in your local
.vimrc file: >

    :set viminfo=""
<
For more information, read 

    |'viminfo'|

 								*faq-17.3*
17.3. How do I save and use Vim marks across Vim sessions?

You can save and restore Vim marks across Vim sessions using the viminfo
file. To use the viminfo file, make sure the 'viminfo' option is not empty.
To save and restore Vim marks, the 'viminfo' option should not contain the
'f' flag or should have a value greater than zero for the 'f' option.

For more information, read 

    |21.3|
    |viminfo|
    |'viminfo'|
    |:wviminfo|
    |:rviminfo|

=============================================================================
 								*faq-18*
SECTION 18 - REMOTE EDITING

 								*faq-18.1*
18.1. How do I open a file with existing instance of gvim? What happened to
      the Vim 5.x OpenWithVim.exe and SendToVim.exe files?

Starting with Vim6, the OLE version of OpenWithVim.exe and SendToVim.exe
Vim utilities are replaced by the new client-server feature. To open the
file j.txt with an existing instance of Gvim (MyVim), use: >

    $ gvim --servername MyVim --remote-silent j.txt
<
To list the server names of all the currently running Vim instances, use >

    $ vim --serverlist
<
To get more information about client-server feature, read 

    |client-server|

 								*faq-18.2*
18.2. How do I send a command to a Vim server to write all buffers to disk?

You can use the Vim remote server functionality to do this: >

    $ gvim --servername myVIM --remote-send "<C-\><C-N>:wall<CR>"
<
For more information, read 

    |client-server|
    |CTRL-\_CTRL-N|
    |:wall|

 								*faq-18.3*
18.3. Where can I get the documentation about the Vim remote server
      functionality?

You can get more information about the Vim remote server functionality by
reading 

    |client-server|

=============================================================================
 								*faq-19*
SECTION 19 - OPTIONS

 								*faq-19.1*
19.1. How do I configure Vim in a simple way?

You can use the ":options" command to open the Vim option window: >

    :options
<
This window can be used for viewing and setting all the options.

For more information, read 

    |:options|

 								*faq-19.2*
19.2. How do I toggle the value of an option?

You can prefix the option with "inv" to toggle the value of the option: >

    :set invignorecase
    :set invhlsearch
<
You can also suffix the option with "!" to toggle the value: >

    :set ignorecase!
    :set hlsearch!
<
For more information, read 

    |set-option|

 								*faq-19.3*
19.3. How do I set an option that affects only the current buffer/window?

Some of the Vim options can have a local or global value. A local value
applies only to a specific buffer or window. A global value applies to all
the buffers or windows.

When a Vim option is modified using the ":set" command, both the global and
local values for the option are changed. You can use the ":setlocal"
command to modify only the local value for the option and the ":setglobal"
command to modify only the global value.

You can use the ":setlocal" command to set an option that will affect only
the current file/buffer: >

    :setlocal textwidth=70
<
Note that not all options can have a local value. You can use ":setlocal"
command to set an option locally to a buffer/window only if the option is
allowed to have a local value.

You can also use the following command to set an option locally: >

    :let &l:{option-name} = <value>
<
For more information, read 

    |:setlocal|
    |local-options|

 								*faq-19.4*
19.4. How do I use space characters for a Vim option value?

To use space characters in a Vim option value, you have to escape the space
character. For example: >

    :set tags=tags\ /usr/tags
<
For more information, read 

    |option-backslash|

 								*faq-19.5*
19.5. Can I add (embed) Vim option settings to the contents of a file?

You can use modelines to add Vim option settings to the contents of a file.
For example, in a C file, you can add the following line to the top or the
bottom of the file: >

    /* vim:sw=4: */
<
This will set the 'shiftwidth' option to 4, when editing that C file.
For this to work, the 'modeline' option should be set. By default, the
'modeline' option is set. An alternative example is given in this document
in the first line.

The 'modelines' settings specifies the number of
lines that will be checked for the Vim set commands.

For more information, read 

    |21.6|
    |modeline|
    |auto-setting|
    |'modeline'|
    |'modelines'|

 								*faq-19.6*
19.6. How do I display the line numbers of all the lines in a file?

You can set the 'number' option to display the line numbers for all the
lines. >

    :set number
<
For more information, read 

    |'number'|

 								*faq-19.7*
19.7. How do I change the width of the line numbers displayed using the
      "number" option?

You can set the minimum number of columns to be used for line numbering by
setting the 'numberwidth' option: >

    :set numberwidth=3
<
This set's the width for the line number to 3 digits, which is enough, if
your buffer contains less than 999 lines. However, if your current buffer
contains more lines than 999, the numberwidth will be adjusted accordingly,
so that the maximum line number will fit on the screen.

 								*faq-19.8*
19.8. How do I display (view) all the invisible characters like space, tabs
      and newlines in a file?

You can set the 'list' option to see all the invisible characters in your
file. >

    :set list
<
With this option set, you can view space characters, tabs, newlines,
trailing space characters and wrapped lines.

To not display the invisible characters (which is the default), you have to
reset the 'list' option: >

    :set nolist
    (or)
    :set list!
<
The ":set list!" command will toggle the current setting of the boolean
'list' option.

You can modify the 'listchars' option to configure how and which invisible
characters are displayed. For example, with the following command all the
trailing space characters will be displayed with a '.' character. >

    :set listchars=trail:.
<
For more information, read 

    |'listchars'|
    |'list'|

 								*faq-19.9*
19.9. How do I configure Vim to always display the current line and column
      number?

You can set the 'ruler' option to display current column and line number in
the status line: >

    :set ruler
<
For more information, read 

    |'ruler'|

 								*faq-19.10*
19.10. How do I display the current Vim mode?

You can set the 'showmode' option to display the current Vim mode. In
Insert, Replace and Visual modes, Vim will display the current mode on the
last line. >

    :set showmode
<
For more information, read 

    |'showmode'|

 								*faq-19.11*
19.11. How do I configure Vim to show pending/partial commands on the
       status line?

You can set the 'showcmd' option to display pending/partial commands in the
status line: >

    :set showcmd
<
For more information, read 

    |'showcmd'|

 								*faq-19.12*
19.12. How do I configure the Vim status line to display different
       settings/values?

You can set the 'statusline' option to display different values/settings in
the Vim status line.

For more information, read 

    |'statusline'|
    |'laststatus'|
    |'rulerformat'|
    |'ruler'|

 								*faq-19.13*
19.13. How do I configure Vim to display status line always?

You can set the 'laststatus' option to 2 to display the status line always. >

    :set laststatus=2
<
For more information, read 

    |'laststatus'|

 								*faq-19.14*
19.14. How do I make a Vim setting persistent across different Vim
       invocations/instances/sessions?

To make a Vim option setting persistent across different Vim instances, add
your setting to the .vimrc or .gvimrc file. You can also use the ":mkvimrc"
command to generate a vimrc file for the current settings.

For more information, read 

    |save-settings|
    |vimrc|
    |gvimrc|
    |vimrc-intro|
    |:mkvimrc|
    |initialization|

 								*faq-19.15*
19.15. Why do I hear a beep (why does my window flash) about 1 second after
       I hit the Escape key?

This is normal behavior. If your window flashes, then you've got the visual
bell on. Otherwise, you should hear a beep.

Vim needs a timeout to tell the difference between a simple escape and,
say, a cursor key sequence.  When you press a key in normal mode (and even
in insert mode) and that key is the beginning of a mapping, Vim waits a
certain amount of time to see if the rest of the mapping sequence follows.
If the mapping sequence is completed before a given timeout period, the
mapping for that sequence of keys is applied. If you interrupt the mapping,
the normal actions associated with the keys are executed.

For example, if you have a mapping defined as ":imap vvv Vim is great!!"
and you type "vvv" quickly, the "Vim is great!!" will be inserted into your
text. But if you type "vv v" then that is what will put into your text.
This is also true if you type "vvv" too slowly where "too slowly" is longer
than the value for the timeout option. Setting the timeout option to a
larger value can help alleviate problems that appear when using function
keys over a slow line.

For more information, read 

    |ttimeout|

 								*faq-19.16*
19.16. How do I make the 'c' and 's' commands display a '$' instead of
       deleting the characters I'm changing?

To make the 'c' and 's' commands display a '$' instead of deleting the
characters, add the $ flag to the 'cpoptions' option: >

    :set cpoptions+=$
<
For more information, read 

    |'cpoptions'|

 								*faq-19.17*
19.17. How do I remove more than one flag using a single ":set" command
       from a Vim option?

You can remove more than one flag from a Vim option using a single ":set"
command, by specifying the flags in exactly the same order as they appear
in the option. For example, if you use the following command to remove the
't' and 'n' flags from the 'formatoptions' option: >

    :set formatoptions-=tn
<
The 't' and 'n' flags will be removed from the 'formatoptions' option, only
if the 'formatoptions' option contains these flags in this order: 'tn'.
Otherwise, it will not remove the flags. To avoid this problem, you can
remove the flags one by one: >

    :set formatoptions-=t formatoptions-=n
<
For more information, read 

    |:set-=|

=============================================================================
 								*faq-20*
SECTION 20 - MAPPING KEYS

 								*faq-20.1*
20.1. How do I know what a key is mapped to?

To see what a key is mapped to, use the following commands: >

    :map <key>
    :map! <key>
<
You can also check the mappings in a particular mode using one of the
":cmap", ":nmap", ":vmap", ":imap", ":omap", etc commands.

For more information, read 

    |map-listing|
    |map-overview|

 								*faq-20.2*
20.2. How do I list all the user-defined key mappings?

You can list all the user-defined key mappings using: >

    :map
<
For more information, read 

    |map-listing|

 								*faq-20.3*
20.3. How do I unmap a previously mapped key?

You can unmap a previously mapped key using the ":unmap" command: >

    :unmap <key>
    :unmap! <key>
<
For mode specific mappings, you can use one of the
":nunmap/:vunmap/:ounmap/:iunmap/:lunmap/:cunmap" commands.

The following command will fail to unmap a buffer-local mapped key: >

    :unmap <key>
<
To unmap a buffer-local mapped key, you have to use the <buffer> keyword in
the unmap command: >

    :unmap <buffer> <key>
    :unmap! <buffer> <key>
<
For more information, read 

    |:unmap|
    |map-modes|
    |map-local|
    |'mapleader'|

 								*faq-20.4*
20.4. I am not able to create a mapping for the <xxx> key. What is wrong?

First make sure that the key is passed to Vim. In insert mode, press CTRL-V
followed by the desired key.  You should see the keycode corresponding to
the key .  If you do see the keycode, then you can create a mapping for the
key using the following command: >

    :map <C-V><xxx>  <your_command_to_be_mapped>
<
For more information, read 

    |map-keys-fails|
    |:map-special-keys|
    |key-codes|

 								*faq-20.5*
20.5. Why does mapping the <C-...> key not work?

The only Ctrl-printable-key chords which Vim can reliably detect (because they
are defined in the ASCII standard) are the following: >

        Ctrl-@                 0x00            NUL
        Ctrl-A to Ctrl-Z       0x01 to 0x1A
        Ctrl-a to Ctrl-z       0x01 to 0x1A
        Ctrl-[                 0x1B            ESC
        Ctrl-\                 0x1C
        Ctrl-]                 0x1D
        Ctrl-^                 0x1E
        Ctrl-_                 0x1F
        Ctrl-?                 0x7F            DEL
<
Most of these, however, already have a function in Vim (and some are
aliases of other keys: Ctrl-H and Bsp, Ctrl-I and Tab, Ctrl-M and Enter,
Ctrl-[ and Esc, Ctrl-? and Del).

The "safest" keys to use in Vim for the {lhs} of a mapping are the F
keys, with or without Shift: <F2> to <F12> and <S-F1> to <S-F12>. (Some
OSes, including mine, intercept Ctrl-Fn and Alt-Fn, which never reach an
application program such as vim or gvim.) 
 								*faq-20.6*
20.6. How do I map the numeric keypad keys?

First make sure that the numeric keypad keys are passed to Vim. Next, you
can use the following command to map the numeric keypad keys: >

    :map <kSomething>  <your_command>
<
where, <kSomething> can be kHome, kEnd, kPageUp, kPageDown, kPlus, kMinus,
kDivide, kMultiply, kEnter, etc.

For more information, read 

    |key-codes|
    |terminal-options|

 								*faq-20.7*
20.7. How do I create a mapping that works only in visual mode?

You can create mappings that work only in specific mode (normal, command,
insert, visual, etc). To create a mapping that works only in the visual
mode, use the ":vmap" command: >

    :vmap <F3> <your mapping here>
<
This mapping will work in visual and select mode. If you want the map to
work only in visual mode (excluding select mode), use:
 >

    :xmap <F3> <your mapping here>
<
and to have the mapping only work in select mode (but not visual mode),
use: >

    :smap <F3> <your mapping here>
<
For more information, read 

    |:vmap|
    |:xmap|
    |:smap|
    |map-modes|
    |40.1|
 								*faq-20.8*
20.8. How do I create a mapping that works only in normal and operator
   pending mode (but not in visual mode)?

Using ":map" creates a mapping that works in normal, visual+select mode and
operator pending mode. You can use ":nmap" to have the mapping only work in
normal mode and ":vmap" to have the mapping only be defined for visual and
select mode or use ":omap" to have the mapping only defined in operator
pending mode.

But if you want to have a mapping defined, that works in both operator
pending mode and normal mode, but not in visual and select mode, you need
to first define the mapping using ":map" and afterwards delete the mapping
for visual and select mode:

	:map <f3> <your mapping here>
	:vunmap <f3>
 								*faq-20.9*
20.9. In a Vim script, how do I know which keys to use for my mappings, so
      that the mapped key will not collide with an already used key?

Vim uses most of the keys in the keyboard. You can use the <leader> prefix
in maps to define keys which will not overlap with Vim keys. For example: >

    :map <leader>S <C-W>s
    :map <leader>j <C-W>j
    :map <leader>k <C-W>k
<
where by default <leader> gets substituted with a backslash (\), so the
user would enter >

        \s
        \j
        \k
<
to invoke the above map commands. The user can change the mapleader
variable to be whatever they wanted: >

    :let mapleader = ","
<
When writing a plugin or other script, more often than not, it is advisable
to use :noremap instead of :map to avoid side effects from user defined
mappings.

For more information, read 

    |<Leader>|
    |<LocalLeader>|
    |write-plugin|

 								*faq-20.10*
20.10. How do I map the escape key?

You can map the Escape key to some other key using the ":map" command. For
example, the following command maps the escape key to CTRL-O. >

    :map <C-O> <Esc>
<
 								*faq-20.11*
20.11. How do I map a key to perform nothing?

You can map a key to <Nop> to perform nothing when the key is pressed. For
example, with the following mappings, the <F7> key will do nothing when
pressed. >

    :map <F7> <Nop>
    :map! <F7> <Nop>
<
For more information, read 

    |<Nop>|
    |:map|
    |:map!|
    |map-modes|

 								*faq-20.12*
20.12. I want to use the Tab key to indent a block of text and Shift-Tab
       key to unindent a block of text. How do I map the keys to do this?
       This behavior is similar to textpad, visual studio, etc.

Use the following mapping: >

    :inoremap <S-Tab> <C-O><LT><LT>
    :nnoremap <Tab> >>
    :nnoremap <S-Tab> <LT><LT>
    :vnoremap <Tab> >
    :vnoremap <S-Tab> <LT>
<
Note that, the <S-Tab> mapping will work only if Vim receives the correct
key sequence. This is mostly the case with GUI Vim.

For more information, read 

    |:inoremap|
    |:nnoremap|
    |:vnoremap|
    |<S-Tab>|
    |i_CTRL-O|
    |>>|
    |<<|
    |<LT>|

 								*faq-20.13*
20.13. In my mappings the special characters like <CR> are not recognized.
       How can I configure Vim to recognize special characters?

Check the value of the 'cpoptions' option: >

    :set cpoptions?
<
If this option contains the '<' flag, then special characters will not be
recognized in mappings. Remove the '<' flag from 'cpoptions' option: >

    :set cpo-=<
<
Also, check the value of the 'compatible' option: >

    :set compatible?
<
The 'compatible' option must be reset: >

    :set nocompatible
<
For more information, read 

    |'cpoptions'|
    |'compatible'|

 								*faq-20.14*
20.14. How do I use the '|' to separate multiple commands in a map?

You can escape the '|' character using backslash (\) to use '|' in a map. >

    :map _l :!ls \| more<CR>
<
You can also try the following command: >

    :map _l :!ls <bar> more<CR>
<
There are also other ways to do this.

For more information, read 

    |map_bar|

 								*faq-20.15*
20.15. If I have a mapping/abbreviation whose ending is the beginning of
       another mapping/abbreviation, how do I keep the first from expanding
       into the second one?

Instead of using the ":map lhs rhs" command, use the ":noremap lhs rhs"
command. For abbreviations, use "noreabbrev lhs rhs". The "nore" prefix
prevents the mapping or abbreviation from being expanded again.

For more information, read 

    |:noremap|
    |:noreabbrev|

 								*faq-20.16*
20.16. Why does it take a second or more for Vim to process a key,
       sometimes when I press a key?

Make sure you have not defined a mapping for this key using the following
command: >

    :map <key>
<
If a mapping is defined for this key and the mapped key contains more than
one character, then Vim will wait for the next character to be pressed to
determine whether it is the mapped key or not. For example, if you have
mapped "ab", then if you press "a", Vim will wait for the next key to be
pressed. If the next key is "b", Vim will execute the mapped sequence.
Otherwise, Vim will proceed with the normal processing of "a" followed by
the next key. If the 'timeout' option is set (which is the default), then
Vim will timeout after waiting for the period specified with the
'timeoutlen' option (default is 1 second).

For more information, read 

    |map-typing|
    |'timeoutlen'|
    |'ttimeoutlen'|
    |'timeout'|
    |'ttimeout'|
    |vt100-cursor-keys|
    |slow-fast-terminal|

 								*faq-20.17*
20.17. How do I map a key to run an external command using a visually
       selected text?

You can the ":vmap" command to map a key in the visual mode. In the mapped
command sequence, you have to first yank the text. The yanked text is
available in the '"' register. Now, you can use the contents of this
register to run the external command. For example, to run the external
command "perldoc" on a visually selected text, you can use the following
mapping: >

    :vmap <F7> y:!exec "!perldoc '" . @" . "'"<CR>
<
If you want the mapping to work in the visual mode, but not with the
highlighted text, you can use the following command: >

    :vmap <F7> :<C-U>!perldoc <cword><CR>
<
The above mapping will use the word under the cursor instead of the
highlighted text. Note the use of the <C-U> before invoking the "perldoc"
external command. The <C-U> is used to erase the range of text selected in
the visual mode and displayed on the command line. If the visual range is
not removed using <C-U>, then the output from the external command will
replace the visually selected text.

For more information, read 

    |:vmap|
    |quote_quote|
    |let-register|
    |c_CTRL-U|
    |:!cmd|

 								*faq-20.18*
20.18. How do I map the Ctrl-I key while still retaining the functionality
       of the <Tab> key?

The Ctrl-I key and the <Tab> key produce the same keycode, so Vim cannot
distinguish between the Ctrl-I and the <Tab> key. When you map the Ctrl-I
key, the <Tab> key is also mapped (and vice versa). The same restriction
applies for the Ctrl-[ key and the <Esc> key.

For more information, read 

    |keycodes|

=============================================================================
 								*faq-21*
SECTION 21 - ABBREVIATIONS

 								*faq-21.1*
21.1. How do I auto correct misspelled words?

You can auto correct misspelled words using abbreviations. For example, the
following abbreviation can be used to correct "teh" with "the": >

    :abbreviate teh the
<
Vim supports abbreviations in insert mode, replace mode and command-line
mode.

For more information, read 

    |24.7|
    |abbreviations|
    |Q_ab|

 								*faq-21.2*
21.2. How do I create multi-line abbreviations?

You can create multi-line abbreviations by embedding the "<CR>"
key code in the text: >

    iabbrev #c --------------<CR>-- Date:<CR>--<CR>---------
<
With the above abbreviation, when you type #c, it will be expanded to
the following text:

--------------
-- Date:
--
---------

For more information, read 

    |abbreviations|

 								*faq-21.3*
21.3. When my abbreviations are expanded, an additional space character is
      added at the end of the expanded text. How do I avoid this character?

To avoid an additional space character at the end of the expanded text, you
can expand the abbreviation by pressing the CTRL-] key.  The abbreviation
will be expanded without adding a space character at the end.

Another alternative is to use the following function and command:

function! Eatchar(pat)
    let c = nr2char(getchar())
    return (c =~ a:pat) ? '' : c
endfunction
command! -nargs=+ Iabbr execute "iabbr" <q-args> . "<C-R>=Eatchar('\\s')<CR>"

Now, define your abbreviations using the new "Iabbr" command instead of the
builtin "iabbrev" command. With this command, after expanding the
abbreviated text, the next typed space character will be discarded.

For more information, read 

    |abbreviations|

 								*faq-21.4*
21.4. How do I insert the current date/time stamp into the file?

You can use the strftime() function to insert the current data/time stamp
in a file. For example, you can use the following abbreviation: >

    iabbrev dts <C-R>=strftime("%y/%m/%d %H:%M")<CR>
<
With this abbreviation, when you type dts in insert mode, it will be
expanded to the date/time stamp.

Some other forms of the above abbreviation are listed below: >

    iabbrev mdyl <C-R>=strftime("%a %d %b %Y")<CR>
    iabbrev mdys <C-R>=strftime("%y%m%d")<CR>
    iabbrev mdyc <C-R>=strftime("%c")<CR>
    iabbrev hml  <C-R>=strftime("%d/%m/%y %H:%M:%S")<CR>
    iabbrev hms  <C-R>=strftime("%H:%M:%S")<CR>
<
For more information, read 

    |strftime()|
    |i_CTRL-R|

 								*faq-21.5*
21.5. How do I prevent an abbreviation from expanding in insert mode?

You can prevent an abbreviation from expanding in insert mode by typing
CTRL-V before the character after the abreviated word.

For more information, read 

    |abbreviations|

=============================================================================
 								*faq-22*
SECTION 22 - RECORD AND PLAYBACK

 								*faq-22.1*
22.1. How do I repeat an editing operation (insertion, deletion, paste,
      etc)?

You can repeat the last editing operation using the '.' command. This will
repeat the last simple change like a insert, delete, change, paste, etc.

For more information, read 

    |04.3|
    |single-repeat|
    |Q_re|

 								*faq-22.2*
22.2. How I record and repeat a set of key sequences?

You can use the 'q' command in normal mode to record a set of key sequences
and store it in a register. For example, in the normal mode you can press q
followed by a register name {0-9a-bA-Z"} to start the recording.  To
end/stop the recording press q again. You can playback/repeat the recorded
key sequences by pressing @ followed by the register name. e.g. @a.

Another approach is to start Vim with the "-w" command-line argument. >

    $ vim -w <file_name>
<
Vim will record all the characters typed in the session in the
specified file "file_name". You can use the recorded file with the "-s"
command line argument to play it back: >

    $ vim -s <file_name>
<
For more information, read 

    |10.1|
    |recording|
    |-w|
    |-s|

 								*faq-22.3*
22.3. How do I edit/modify a recorded set of key sequences?

The recorded key sequences are stored in a register. You can paste the
contents of the register into a Vim buffer, edit the pasted text and again
yank the text into the register. You can also use the ":let" command to
modify the register. For example: >

    :let @a = "iHello World\<Esc>"
<
For more information, read 

    |recording|
    |10.1|
    |let-register|
    |<>|
    |'cpoptions'|

 								*faq-22.4*
22.4. How do I write recorded key sequences to a file?

The recorded key sequences are stored in a register. You can paste the
contents of the register into a Vim buffer. Now you can save the buffer
into a file. You can also modify the pasted text and again yank into the
register to modify the recorded key sequence. For example, if you record a
set of key sequences using qa ..... q. The recorded key sequences are
stored in the register 'a'. You can paste the contents of register 'a'
using "ap.

For more information, read 

    |recording|
    |10.1|

 								*faq-22.5*
22.5. I am using register 0 to record my key sequences (i.e. q0 .... q).
      In the recorded key sequences, I am yanking some text. After the
      first replay of the recorded key sequence, I am no longer able to
      play it back.

Register 0 contains the text from the last yank operation. In your recorded
key sequence, when the yank is performed, register 0 is overwritten with
the yanked text. So your recording stored in register 0 is lost. You have
to use some other register.

For more information, read 

    |registers|

=============================================================================
 								*faq-23*
SECTION 23 - AUTOCOMMANDS

 								*faq-23.1*
23.1. How do I execute a command when I try to modify a read-only file?

You can use the FileChangedRO autocommand event to execute a command when a
read-only file is modified. For example, you can use this event to checkout a
read-only file: >

    :autocmd FileChangedRO * call MyCheckoutFunction()
<
For more information, read 

    |FileChangedRO|

 								*faq-23.2*
23.2. How do I execute a command every time when entering a buffer?

You can use the BufEnter autocommand event to execute a command every time
when entering a buffer. For example: >

    :autocmd BufEnter *.c set formatoptions=croqt
<
For more information, read 

    |BufEnter|

 								*faq-23.3*
23.3. How do I execute a command every time when entering a window?

You can use the WinEnter autocommand event to execute a command every time
when entering a window. For example: >

    :autocmd WinEnter *.c call MyFunction()
<
For more information, read 

    |WinEnter|

 								*faq-23.4*
23.4. From an autocmd, how can I determine the name of the file or the
      buffer number for which the autocommand is executed?

You can use the special words <afile> or <abuf> in an autocmd to get the
name of the file or the buffer number for which the autocommand is
executed.

For more information, read 

    |:<afile>|
    |:<abuf>|
    |:<amatch>|

 								*faq-23.5*
23.5. How do I automatically save all the changed buffers whenever Vim
      loses focus?

You can define an autocommand for the FocusLost event which will save all
the modified buffers whenever Vim loses focus: >

    :autocmd FocusLost * wall
<
For more information, read 

    |FocusLost|
    |:wall|

 								*faq-23.6*
23.6. How do I execute/run a function when Vim exits to do some cleanup?

You can use VimLeave autocmd event to execute a function just before Vim
exits. For example, >

    :autocmd VimLeave * call MyCleanupFunction()
<
For more information, read 

    |VimLeave|

=============================================================================
 								*faq-24*
SECTION 24 - SYNTAX HIGHLIGHT

 								*faq-24.1*
24.1. How do I turn off/on syntax highlighting?

By default, the Vim syntax highlighting is turned off. To enable the syntax
highlighting, you can use one of the following commands: >

    :syntax enable
<
    or >

    :syntax on
<
To disable the syntax highlighting, you can use the following command: >

    :syntax off
<
For more information, read 

    |06.1|
    |06.4|
    |:syntax-enable|
    |:syntax-on|
    |:syn-clear|

 								*faq-24.2*
24.2. How do I change the background and foreground colors used by Vim?

Vim uses the "Normal" highlight group for the background and foreground
colors. To change the foreground/background colors, you have to modify the
"Normal" highlight group. For example, to set the background color to blue
and foreground color to white, you can use >

    :highlight Normal ctermbg=blue ctermfg=white guibg=blue guifg=white
<
If you are using the Motif or the Athena version of the GUI Vim, then you
can modify the foreground and background resource names in the .Xdefaults
files to change the colors: >

    Vim.foreground:     Black
    Vim.backround:      Wheat
<
You can also use the "-foreground" and "-background" command-line arguments
to specify the foreground and background colors. These arguments are
supported only in the Motif or Athena versions: >

    $ gvim -foreground Black -background Wheat
<
For more information, read 

    |:highlight|
    |.Xdefaults|
    |-gui|

 								*faq-24.3*
24.3. How do I change the highlight colors to suit a dark/light background?

You can set the 'background' option to either 'dark' or 'light' to change
the highlight colors to suit a dark/light background: >

    :set background=dark
<
For more information, read 

    |'background'|
    |6.2|

 								*faq-24.4*
24.4. How do I change the color of the line numbers displayed when the
      ":set number" command is used?

The line numbers displayed use the LineNr highlighting group. To display
the current colors used, use >

    :hi LineNr
<
To change the color modify the LineNr highlight group. For example: >

    :hi linenr guifg=red guibg=black
<
This will give red numbers on a black background in GVIM.

For more information, read 

    |:highlight|

 								*faq-24.5*
24.5. How do I change the background color used for a Visually selected
      block?

You can modify the 'Visual' highlight group to change the color used for a
visually selected block: >

    :highlight Visual guibg=red
<
For more information, read 

    |:highlight|
    |hl-Visual|

 								*faq-24.6*
24.6. How do I highlight the special characters (tabs, trailing spaces, end
      of line, etc) displayed by the 'list' option?

You can modify the "NonText" and "SpecialKey" highlight groups to highlight
the special characters displayed by the 'list' option: >

    :highlight NonText guibg=red
    :highlight SpecialKey guibg=green
<
The "NonText" highlighting group is used for "eol", "extends" and
"precedes" settings in the "listchars" option.  The "SpecialKey"
highlighting group is used for the "tab" and "trail" settings.

For more information, read 

    |'listchars'|
    |hl-NonText|
    |hl-SpecialKey|

 								*faq-24.7*
24.7. How do I specify a colorscheme in my .vimrc/.gvimrc file, so that Vim
      uses the specified colorscheme everytime?

You can specify the color scheme using the ":colorscheme" command in your
.vimrc or .gvimrc file: >

    colorschme evening
<
For more information, read 

    |:colorscheme|

 								*faq-24.8*
24.8. Vim syntax highlighting is broken. When I am editing a file, some
      parts of the file is not syntax highlighted or syntax highlighted
      incorrectly.

Vim doesn't read the whole file to parse the text for syntax highlighting.
It starts parsing wherever you are viewing the file. That saves a lot of
time, but sometimes the colors are wrong. A simple fix is refreshing the
screen using the CTRL-L key. Or scroll back a bit and then forward again.
You can also use the command: >

    :syntax sync fromstart
<
Note that this might considerably slow down the screen refreshing.

For more information, read 

    |:syn-sync|
    |:syn-sync-first|

 								*faq-24.9*
24.9. Is there a built-in function to syntax-highlight the corresponding
      matching bracket?

Yes. Vim includes the matchparen Plugin as standard plugin that is enabled
by default. Whenever the cursor moves over an item defined with the
'matchpairs' option, the cursor will jump back to the corresponding
bracket.

However, this will only work, if the corresponding parenthesis is not
visible in the current window, the cursor won't jump to it. 

The matchit plugin provides an improved version, that skips matches in
comments and can jump to related items (e.g. "if", "else", "endif" items).

For more information, read 

    |matchparen|
    |'matchpairs'|
    |matchit-install|

 								*faq-24.10*
24.10. How do I turn off the C comment syntax highlighting?

You can use the following command to turn off C comment syntax
highlighting: >

    :highlight clear comment
<
For more information, read 

    |c-syntax|

 								*faq-24.11*
24.11. How do I add my own syntax extensions to the standard syntax files
       supplied with Vim?

You should not modify the syntax files supplied with Vim to add your
extensions. When you install the next version of Vim, you will lose your
changes. Instead you should create a file under the ~/.vim/after/syntax
directory with the same name as the original syntax file and add your
additions to this file.

For more information, read 

    |mysyntaxfile-add|
    |'runtimepath'|

 								*faq-24.12*
24.12. How do I replace a standard syntax file that comes with the Vim
       distribution with my own syntax file?

You can replace a standary syntax file that comes with the Vim distribution
by creating a file with the same name as the original syntax file and
placing it in the vim runtime syntax (~/.vim/syntax) directory. For
example, to replace the c.vim syntax file in a Unix system, place the new
c.vim in the ~/.vim/syntax directory. In a MS-Windows system, place the new
syntax file in the $HOME/vimfiles/syntax or $VIM/vimfiles/syntax directory.

For more information, read 

    |mysyntaxfile-replace|
    |44.11|
    |mysyntaxfile|

 								*faq-24.13*
24.13. How do I highlight all the characters after a particular column?

You can use the ":match" command to highlight all the characters after a
particular column: >

    :match Todo '\%>75v.\+'
<
This will highlight all the characters after the 75th column.

For more information, read 

    |:match|
    |/\%v|
    |/\+|
    |/.|

 								*faq-24.14*
24.14. How do I convert a source file (.c, .h, etc) with the Vim syntax
       highlighting into a HTML file?

You can use the 2html.vim script to convert a source file into a HTML file
with the Vim syntax highlighting. Use the following command: >

    :TOhtml
<
For more information, read 

    |convert-to-HTML|
    |TOhtml|

 								*faq-24.15*
24.15. How do I list the definition of all the current highlight groups?

You can list the definition of all the current highlight groups using the
":highlight" (without any arguments) ex command.

For more information, read 

    |:highlight|

=============================================================================
 								*faq-25*
SECTION 25 - VIM SCRIPT WRITING

 								*faq-25.1*
25.1. How do I list the names of all the scripts sourced by Vim?

You can use the ":scriptnames" command to list the names of all the scripts
sourced by Vim: >

    :scriptnames
<
For more information, read 

    |:scriptnames|

 								*faq-25.2*
25.2. How do I debug Vim scripts?

Vim has built-in support for a primitive debugger to debug Vim plugins and
scripts. Using this debugger you can set breakpoints and step through the
plugin functions.

For more information, read 

    |debug-scripts|
    |-D|

 								*faq-25.3*
25.3. How do I locate the script/plugin which sets a Vim option?

You can use the ":verbose" command to locate the plugin/script which last
modified a Vim option. For example: >

    :verbose set textwidth?
<
For more information, read 

    |:set-verbose|
    |:verbose|

 								*faq-25.4*
25.4. I am getting some error/informational messages from Vim (possibly
      when running a script), the messages are cleared immediately. How do
      I display the messages again?

You can use the ":messages" command to display the previous messages. >

    :messages
<
For more information, read 

    |:messages|
    |:echoerr|
    |:echomsg|
    |message-history|

 								*faq-25.5*
25.5. How do I save and restore a plugin specific information across Vim
      invocations?

Vim will save and restore global variables that start with an uppercase
letter and don't contain a lower case letter. For this to work, the
'viminfo' option must contain the '!' flag. Vim will store the variables in
the viminfo file.

For more information, read 

    |'viminfo'|
    |viminfo-file|
    |variables|

 								*faq-25.6*
25.6. How do I start insert mode from a Vim function?

You can use the ":startinsert" command to start the insert mode from inside
a Vim function.

For more information, read 

    |:startinsert|

 								*faq-25.7*
25.7. How do I change the cursor position from within a Vim function?

You can use the cursor() function to position the cursor. >

        call cursor(lnum, col)
<
Alternatively, use the setpos() function: >

       call setpos('.', [bufnum, lnum, col, off])
<
which set's the cursor in the buffer bufnum to line lnum, column col and
offset for 'virtualedit'. You can use the getpos() function, to return a
list with these values, that can then be fed back to the setpos() function.

If you want to save and restore the viewpoint on a window, use the
winsaveview() and winrestview() function calls.

You can also use the following command to change the cursor position: >

        exe "normal! " . lnum . "G" . col . "|"
<
For more information, read 

    |cursor()|
    |bar|
    |getpos()|
    |setpos()|
    |winsaveview()|
    |winrestview()|

 								*faq-25.8*
25.8. How do I check the value of an environment variable in the .vimrc
      file?

You can use prefix the environment variable name with the '$' character to
use it from a Vim script/function.  You can refer to the value of an
environment variable using the $env_var syntax: >

    if $EDITOR == 'vi'
    endif
<
For more information, read 

    |expr-env|

 								*faq-25.9*
25.9. How do I check whether an environment variable is set or not from a
      Vim function?

You can use the exists() function to check for the existence of a
environment variable. >

    if exists("$MY_ENV_VAR")
    endif
<
For more information, read 

    |exists()|
    |expr-env|

 								*faq-25.10*
25.10. How do I call/use the Vim built-in functions?

You can use the ":call" command to invoke a Vim built-in function: >

    :call cursor(10,20)
<
You can use the ":echo" command to echo the value returned by a function: >

    :echo char2nr('a')
<
You can use the ":let" command to assign the value returned by a function
to a variable: >

    :let a = getline('.')
<
To store the return value from a function into a Vim register, you can use
the following command: >

    :let @a = system('ls')
<
The above command will store the return value from the 'ls' command into
the register 'a'.

For more information, read 

    |:call|
    |:echo|
    |:let|
    |:let-register|
    |user-functions|
    |usr_41.txt|

 								*faq-25.11*
25.11. I am using some normal mode commands in my Vim script. How do I
       avoid using the user-defined mappings for these normal mode commands
       and use the standard Vim functionality for these normal mode
       commands?

You can use the "normal!" command in your script to invoke a normal-mode
command. This will use the standard functionality of the normal mode
command and will not use the user-defined mapping.

For more information, read 

    |:normal|

 								*faq-25.12*
25.12. How do I get the current visually selected text into a Vim variable
       or register?

You can get the current visually selected text into a Vim variable by
yanking the text into Vim register and then assigning the contents of the
register into the variable: >

    :normal! gvy
    :let myvar = @"
<
The above command copies the visually selected text into the variable
"myvar".

You can also use the command: >

    :normal! gv"*y
<
In the above command, gv reselects the last visually selected text and the
rest of the command copies the selected text into the * (clipboard)
register. Alternatively, you can set the 'a' flag in the 'guioptions'
option to automatically copy a visually selected text into the * register.
To do this as part of a visual map, you can use a command similar to the
one shown below: >

    :vmap <F3> "*y:call ...
<

For more information, read 

    |gv|
    |:normal|
    |let-@|
    |quotestar|
    |clipboard|
    |registers|

 								*faq-25.13*
25.13. I have some text in a Vim variable 'myvar'. I would like to use this
       variable in a ":s" substitute command to replace a text 'mytext'.
       How do I do this?

You can use the 'execute' command to evaluate the variable: >

    :execute '%s/mytext/' . myvar . '/'
<
For more information, read 

    |:execute|

You can also use "\=" in the substitute command to evaluate the variable: >

    :%s/mytext/\=myvar/
<
For more information, read 

    |sub-replace-special|

 								*faq-25.14*
25.14. A Vim variable (bno) contains a buffer number. How do I use this
       variable to open the corresponding buffer?

The :buffer command will not accept a variable name. It accepts only a
buffer number or buffer name. You have to use the ":execute" command to
evaluate the variable into the corresponding value. For example: >

    :execute "buffer " . bno
<
For more information, read 

    |:execute|

 								*faq-25.15*
25.15. How do I store the value of a Vim option into a Vim variable?

You can prefix the option name with the '&' character and assign the option
value to a Vim variable using the "let" command. For example, to store the
value of the 'textwidth' option into the Vim variable "old_tw", you can use
the following command: >

    :let old_tw = &tw
<
To explicitly save buffer local options, use the prefix "l:" >

    :let old_tw = &l:tw
<
If you want to explicitly select the global option, use the "g:" prefix to
the option name.

To do the opposite, to set the 'textwidth' option with the value stored in
the 'old_tw' variable, you can use the following command: >

    :let &tw = old_tw
<
For more information, read 

    |expr-option|
    |let-option|

 								*faq-25.16*
25.16. I have copied and inserted some text into a buffer from a Vim
       function. How do I indent the inserted text from the Vim function?

You can use the following command to format the just inserted text: >

    :normal '[=']
<
For more information, read 

    |'[|
    |']|
    |=|
    |:normal|

 								*faq-25.17*
25.17. How do I get the character under the cursor from a Vim script?

You can use the getline() function and use string index [] to get the
character: >

    :echo getline(".")[col(".") - 1]
<
In the above command, getline(".") returns  the text in the current line.
The indexing of the string starts at zero, and you can get a single
character in a string by its index with the "string[index]" notation. The
col(".") returns the column of the cursor position; the adjustment is to
get the right character of the string. However, this does NOT work with
multibyte characters as this command only returns the byte index.

Alternatively, you can use the following sequence of commands to get the
character under the cursor: >

    normal! vy
    let ch=@"
<
Note that the above commands will change the '< and '> marks.

For more information, read 

    |getline()|
    |col()|
    |expr-[]|

 								*faq-25.18*
25.18. How do I get the name of the current file without the extension?

You can get the name of the current file without the extension using: >

    :echo expand("%:r")
<
With some commands, you can use the file name modifiers directly: >

    :cd %:p:h
    :!gcc -o %:r.o %
    :!xpdf %<.pdf
<
For more information, read 

    |filename-modifiers|
    |expand()|
    |cmdline-special|
    |fnamemodify()|

 								*faq-25.19*
25.19. How do I get the basename of the current file?

You can use the :t filename modifier to get the basename of the current
file: >

    :echo expand("%:t")
<
For more information, read 

    |filename-modifiers|

 								*faq-25.20*
25.20. How do I get the output from a Vim function into the current buffer?

You can insert the return value from a function using the following command
in insert mode: >

    <C-R>=MyFunc()
<
Note that this will only insert the return value of the function.

For more information, read 

    |i_CTRL-R|
    |i_CTRL-R_CTRL-R|
    |i_CTRL-R_CTRL-O|
    |expression|

 								*faq-25.21*
25.21. How do I call external programs from a Vim function?

There are several ways to call external programs from a Vim function. You
can use the builtin system() function to invoke external programs and get
the result: >

    :let output = system("ls")
<
You can also use "!" ex-command to run an external command.

For more information, read 

    |system()|
    |:!|
    |10.9|

 								*faq-25.22*
25.22. How do I get the return status of a program executed using the ":!"
       command?

You can use the predefined Vim v:shell_error variable to get the return
status of the last run shell command.

For more information, read 

    |v:shell_error|

 								*faq-25.23*
25.23. How do I determine whether the current buffer is modified or not?

You can check the value of the 'modified' option to determine whether the
current buffer is modified: >

    :set modified?
<
From a Vim script, you can check the value of the 'modified' option: >

    if &modified
        echo "File is modified"
    endif
<
For more information, read 

    |'modified'|

 								*faq-25.24*
25.24. I would like to use the carriage return character in a normal
       command from a Vim script. How do I specify the carriage return
       character?

You can use the ":execute" command to specify the special (control)
character in a normal mode command: >

    :execute "normal \<CR>"
    :execute "normal ixxx\<Esc>"
<
For more information, read 

    |:execute|
    |expr-quote|

 								*faq-25.25*
25.25. How do I split long lines in a Vim script?

You can split long lines in a Vim script by inserting the backslash
character ("\") at the start of the next line. For example,

For more information, read 

    |line-continuation|

 								*faq-25.26*
25.26. When I try to "execute" my function using the "execute 'echo
       Myfunc()'" command, the cursor is moved to the top of the current
       buffer.  Why?

The ":execute" command runs the normal mode command specified by the
argument. In the case of the following command: >

    :execute "echo Myfunc()"
<
The call to "echo Myfunc()" will return 0. The ":execute" command will run
the normal mode command "0", which moves the cursor to the top of the file.
To call a Vim function, you should use the ":call" command instead of the
":execute" command: >

    :call Myfunc()
<
For more information, read 

    |:call|
    |:execute|
    |:echo|
    |user-functions|
    |41.5|
    |41.6|

 								*faq-25.27*
25.27. How do I source/execute the contents of a register?

If you have yanked a set of Vim commands into a Vim register (for example
register 'a'), then you can source the contents of the register using one
of the following commands:

    :@a
or
    :exe @a

For more information, read 

    |:@|

 								*faq-25.28*
25.28. After calling a Vim function or a mapping, when I press the 'u'
       key to undo the last change, Vim undoes all the changes made by
       the mapping/function. Why?

When you call a function or a mapping, all the operations performed by the
function/mapping are treated as one single operation. When you undo the
last operation by pressing 'u', all the changes made by the
function/mapping are reversed.

For more information, read 

    |undo-redo|
    |map-undo|

 								*faq-25.29*
25.29. How can I call a function defined with s: (script local function)
       from another script/plugin?

The s: prefix for a Vim function name is used to create a script local
function. A script local function can be called only from within that
script and cannot be called from other scripts. To define a function in a
script/plugin, so that it can be called from other plugins/scripts, define
the function without the s: prefix.

For more information, read 

    |script-variable|
    |script-local|
    |:scriptnames|

 								*faq-25.30*
25.30. Is it possible to un-source a sourced script? In otherwords, reverse
       all the commands executed by sourcing a script.

No. It is not possible to reverse or undo all the commands executed by
sourcing a script.

For more information, read 

    |:source|

=============================================================================
 								*faq-26*
SECTION 26 - PLUGINS

 								*faq-26.1*
26.1. How do I set different options for different types of files?

You can create filetype plugins to set different options for different
types of files. You should first enable filetype plugins using the command: >

    :filetype plugin on
<
A filetype plugin is a vim script that is loaded whenever Vim opens or
creates a file of that type.  For example, to ensure that the 'textwidth'
option is set to 80 when editing a C program (filetype 'c'), create one of
the following files: >

        ~/.vim/ftplugin/c.vim (Unix)
        %HOME%\vimfiles\ftplugin\c.vim (Windows)
<
with the following text in it: >

        setlocal textwidth=80
<
You can also use autocommands to set specific options when editing specific
type of files. For example, to set the 'textwidth' option to 75 for only
*.txt files, you can use the following autocmd: >

    autocmd BufRead *.txt setlocal textwidth=80
<
For more information, read 

    |filetype-plugin|
    |add-filetype-plugin|
    |autocmd|
    |40.3|

 								*faq-26.2*
26.2. I have downloaded a Vim plugin or a syntax file or a indent file, or
      a color scheme or a filetype plugin from the web. Where should I copy
      these files so that Vim will find them?

You can place the Vim runtime files (plugins, syntax files, indent files,
color schemes, filetype plugins, etc) under one of the directories
specified in the 'runtimepath' option. To determine the current value of
the 'runtimepath' option, use the following command: >

    :set runtimepath
<
For Unix systems, this is usally the "$HOME/.vim" directory. For MS-Windows
systems, this is usually the $VIM\vimfiles or $HOME\vimfiles directory.
Depending on the type of the runtime file, you have to place it under a
specific directory under the above runtime directory. The names of the
directories are listed below: >

    colors/   - color scheme files
    compiler/ - compiler files
    doc/      - documentation
    ftplugin/ - filetype plugins
    indent/   - indent scripts
    keymap/   - key mapping files
    lang/     - menu translations
    plugin/   - plugin scripts
    syntax/   - syntax files
    tutor/    - files for vimtutor
<
For more information, read 

    |your-runtime-dir|
    |'runtimepath'|
    |:runtime|

 								*faq-26.3*
26.3. How do I extend an existing filetype plugin?

You can extend an existing filetype plugin by creating a file under either
the $VIMRTUNTIME/after/ftplugin or the $VIMRTUNTIME/ftplugin directory. The
name of the file should be the same as the name of the existing filetype
plugin file. You can place your additions to the new file.

If you placed the file in the after/ftplugin runtime directory, then Vim
will first source the existing filetype plugin file and then will source
the new file.  If you placed the file in the $VIMRTUNTIME/ftplugin runtime
directory, then Vim will first source the new file and then will source the
existing filetype plugin file.

For more information, read 

    |ftplugin-overrule|
    |filetype-plugin|
    |add-filetype-plugin|
    |'runtimepath'|

 								*faq-26.4*
26.4. How do I turn off loading the Vim plugins?

You can reset the 'loadplugins' option to turn off loading the plugins: >

    :set noloadplugins
<
You can also specify the "--noplugin" command line argument to stop loading
the plugins: >

    $ vim --noplugin
<
For more information, read 

    |'loadplugins'|
    |--noplugin|
    |load-plugins|

 								*faq-26.5*
26.5. How do I turn on/off loading the filetype plugins?

By default, Vim will not load the filetype plugins. You can configure Vim
to load filetype plugins using the command: >

    filetype plugin on
<
You can turn off loading the filetype plugins using: >

    filetype plugin off
<
For more information, read 

    |filetype-plugin-on|
    |filetype-plugin-off|
    |:filetype|

 								*faq-26.6*
26.6. How do I override settings made in a file type plugin in the global
      ftplugin directory for all the file types?

You can use an autocommand triggered on the FileType event: >

    au Filetype * set formatoptions=xyz
<
This should at least be after "filetype on" in your vimrc. Best is to put
it in your "myfiletypefile" file, so that it's always last.

If you want to override a setting for a particular filetype, then create a
file with the same name as the original filetype plugin in the
~/.vim/after/ftplugin directory For example, to override a setting in the
c.vim filetype plugin, create a c.vim file in the ~/.vim/after/ftplugin
directory and add your preferences in this file.

For more information, read 

    |ftplugin-overrule|
    |ftplugins|
    |myfiletypefile|

 								*faq-26.7*
26.7. How do I disable the Vim directory browser plugin?

To disable the directory browsing Vim plugin, add the following line to
your .vimrc file: >

    let g:loaded_netrw = 1
<
For more information, read 

    |netrw|

 								*faq-26.8*
26.8. How do I set the filetype option for files with names matching a
      particular pattern or depending on the file extension?

You can set the 'filetype' option for files with names matching a
particular pattern using an autocmd. For example, to set the 'filetype'
option to 'c' for all files with extension '.x', you can use the following
autocmd: >

    autocmd! BufRead,BufNewFile *.x     setfiletype c
<
A better alternative to the above approach is to create a filetype.vim file
in the ~/.vim directory (or in one of the directories specified in the
'runtimepath' option) and add the following lines: >

    " my filetype file
    if exists("did_load_filetypes")
        finish
    endif
    augroup filetypedetect
        au! BufRead,BufNewFile *.x       setfiletype c
    augroup END
<
For more information, read 

    |new-filetype|
    |43.2|
    |:setfiletype|

=============================================================================
 								*faq-27*
SECTION 27 - EDITING PROGRAM FILES

 								*faq-27.1*
27.1. How do I enable automatic indentation for C/C++ files?

You can enable file-type based indentation using: >

    :filetype indent on
<
If you want to only enable automatic C indentation, then use: >

    :set cindent
<
For more information, read 

    |'cindent'|
    |C-indenting|
    |filetype|

 								*faq-27.2*
27.2. How do I configure the indentation used for C/C++ files?

You can configure the Vim C indentation by modifying the value of the
'cinoptions', 'cinkeys' and 'cinwords' options.

For more information, read 

    |'cindent'|
    |'cinoptions'|
    |'cinkeys'|
    |'cinwords'|
    |C-indenting|
    |cinoptions-values|
    |'smartindent'|

 								*faq-27.3*
27.3. How do I turn off the automatic indentation feature?

By default, the automatic indentation is not turned on. You must have
configured Vim to do automatic indentation in either .vimrc or .gvimrc
files. You can disable automatic indentation using either, >

    :filetype indent off
<
or >

    :set nocindent
<
Also, check the setting for the following options: >

    :set autoindent?
    :set smartindent?
    :set indentexpr?
<
For more information, read 

    |'cindent'|
    |filetype-indent-off|
    |'autoindent'|
    |'smartindent'|
    |'indentexpr'|

 								*faq-27.4*
27.4. How do I change the number of space characters used for the automatic
      indentation?

You can modify the 'shiftwidth' option to change the number of space
characters used for the automatic indentation: >

    :set shiftwidth=4
<
For more information, read 

    |'shiftwidth'|

 								*faq-27.5*
27.5. I am editing a C program using Vim. How do I display the definition
      of a macro or a variable?

You can use the "[d" command to display the definition of a macro, "[i"
command to display the definition of a variable, "gd" to goto the local
declaration of a variable and "gD" to go to the global Declaration.

For more information, read 

    |[d|
    |[i|
    |gd|
    |gD|
    |include-search|
    |29.4|
    |29.5|

 								*faq-27.6*
27.6. I am editing a C program using Vim. How do I jump to the beginning or
      end of a code block from within the block?

You can use '[{' command to jump to the beginning of the code block and ']}
to jump to the end of the code block from inside the block.

For more information, read 

    |[{|
    |]}|
    |various-motions|

 								*faq-27.7*
27.7. When editing C++ files and when inserting new lines above or below a
      comment (//) line, Vim automatically inserts the C++ comment
      character (//) at the beginning of the line. How do I disable this?

This automatic insertion of the comment leader (//) when new lines
are added is controlled by three flags in the 'formatoptions'
option:  'c', 'r' and 'o'.  'c' enables auto-wrapping of comment
lines when typing extends beyond the right margin.  'r' enables the
automatic insertion of the comment leader when <Enter> is pressed
while editing a comment line.  'o' enables the automatic insertion
of the comment leader when a new line is opened above or below an
existing comment line by typing O or o in Normal mode.

You can stop Vim from automatically inserting the comment leader
when typing <Enter> within a comment or when opening a new line by
removing the 'r' and 'o' flags from 'formatoptions'.

   :set formatoptions-=r
   :set formatoptions-=o

The default filetype plugin for C and C++ files
($VIMRUNTIME/ftplugin/c.vim) adds the 'r' and 'o' flags to the
'formatoptions' option.  If you want to override this for C++ files,
then you can add the above lines to the
~/.vim/after/ftplugin/cpp.vim file.

For more information, read

   :help formatoptions
   :help 30.6
   :help format-comments
   :help filetype-plugins
   :help ftplugin-overrule

 								*faq-27.8*
27.8. How do I add the comment character '#' to a set of lines at the
      beginning of each line?

First, select the first character in all the lines using visual block mode
(CTRL-V). Press 'I' to start inserting characters at the beginning of the
line. Enter the comment character and then stop the insert mode by pressing
<Esc>. Vim will automatically insert the entered characters at the
beginning of all the selected lines.

For more information, read 

    |visual-block|
    |blockwise-operators|
    |v_b_I|

 								*faq-27.9*
27.9. How do I edit a header file with the same name as the corresponding C
      source file?

You can use the following command to edit a header file with the same name
as the corresponding C source file: >

    :e %:t:r.h
<
You can use the following command to edit the file in a new split window: >

    :sp %:t:r.h
<
In the above commands, the percent sign expands to the name of the current
file.  The ":t" modifier extracts the tail (last component) of the
filename. The ":r" modifier extracts the root of the filename.  The .h is
appended to the resulting name to get the header filename.

Another approach is to use the following command: >

    :sfind %:t:r.h
<
This command will search for the header file in the directories specified
in the 'path' option.

For more information, read 

    |cmdline-special|
    |filename-modifiers|
    |:sfind|
    |'path'|

 								*faq-27.10*
27.10. How do I automatically insert comment leaders while typing comments?

To automatically insert comment leaders while typing comments, add the 'r'
and 'o' flags to the 'formatoptions' option. >

    :set formatoptions+=ro
<
You may also want to add the 'c' flag to auto-wrap comments using the
'textwidth' option setting and the 'q' flag to format comments with the
"gq" command: >

    :set formatoptions=croq
<
For more information, read 

    |30.6|
    |format-comments|
    |'comments'|
    |fo-table|

=============================================================================
 								*faq-28*
SECTION 28 - QUICKFIX

 								*faq-28.1*
28.1. How do I build programs from Vim?

You can use the ":make" command to build programs from Vim. The ":make"
command runs the program specified by the 'makeprg' option.

For more information, read 

    |30.1|
    |make_makeprg|
    |'makeprg'|
    |'makeef'|
    |:make|
    |quickfix|

 								*faq-28.2*
28.2. When I run the make command in Vim I get the errors listed as the
      compiler compiles the program. When it finishes this list disappears
      and I have to use the  :clist command to see the error message again.
      Is there any other way to see these error messages?

You can use the ":copen" or ":cwindow" command to open the quickfix window
that contains the compiler output. You can select different error lines
from this window and jump to the corresponding line in the source code.

For more information, read 

    |:copen|
    |:cwindow|
    |quickfix|

=============================================================================
 								*faq-29*
SECTION 29 - FOLDING

 								*faq-29.1*
29.1. How do I extend the Vim folding support?

You can use the 'foldexpr' option to fold using an user specified function.
For example, to fold subroutines of the following form into a single line: >

    sub foo {
      my $barf;
      $barf = 3;
      return $barf;
    }
<
You can use the following commands: >

    set foldmethod=expr
    set foldexpr=MyFoldExpr(v:lnum)
    fun! MyFoldExpr(line)
        let str = getline(a:line)
        if str =~ '^sub\>'
            return '1'
        elseif str =~ '^}'
            return '<1'
        else
            return foldlevel(a:line - 1)
        endif
    endfun
<
For more information, read 

    |'foldexpr'|
    |fold-expr|

 								*faq-29.2*
29.2. When I enable folding by setting the 'foldmethod' option, all the
      folds are closed. How do I prevent this?

You can set the 'foldlevelstart' option to a particular value to close only
folds above the specified value. >

    :set foldlevelstart=99
<
For more information, read 

    |'foldlevelstart'|
    |'foldlevel'|
    |fold-foldlevel|

 								*faq-29.3*
29.3. How do I control how many folds will be opened when I start editing a
      file?

You can modify the 'foldlevelstart' option to control the number of folds
that will be opened when you start editing a file. To start editing with
all the folds closed: >

    :set foldlevelstart=0
<
To start editing with all the folds opened, you can use >

    :set foldlevelstart=999
<
For more information, read 

    |'foldlevelstart'|

 								*faq-29.4*
29.4. How do I open and close folds using the mouse?

You can click on the + and - characters displayed at the leftmost column to
open and close fold. For this to work, you have to set the 'foldcolumn'
to a value greater than zero: >

    :set foldcolumn=2
<
For more information, read 

    |'foldcolumn'|

 								*faq-29.5*
29.5. How do I change the text displayed for a closed fold?

You can use the 'foldtext' option to change the text displayed for a closed
fold.

For more information, read 

    |'foldtext'|
    |fold-foldtext|
    |'fillchars'|

 								*faq-29.6*
29.6. How do I store and restore manually created folds across different
      Vim invocations?

You can use the ":mkview" command to store manually created folds. Later,
you can use the ":loadview" command to restore the folds. For this to work,
the 'viewoptions' must contain "folds".

For more information, read 

    |28.4|
    |:mkview|
    |:loadview|
    |'viewoptions'|
    |'viewdir'|
    |:mksession|
    |'sessionoptions'|

=============================================================================
 								*faq-30*
SECTION 30 - VIM WITH EXTERNAL APPLICATIONS

 								*faq-30.1*
30.1. Can I run a shell inside a Vim window?

Currently Vim doesn't have support for running shell and other external
commands inside a Vim window.

For more information, read 

    |shell-window|

Alternatively, you can try using the Unix "screen" utility or the 'splitvt'
program.

Following is a post from the vim_use mailinglist
(http://groups.google.com/group/vim_use/msg/22c97ebfd6a978eb)

-------------------------------------------
Date: Mon, 24 May 2010
Subject: Re: Terminal into vim, best options???
From: Nico Raffo
To: vim_use 

There are quite a few options out there, all with their strengths and
weaknesses. Shell integration is at the top of the Vim wish list. I'm
sure Bram would be more interested in including it if someone
developed and maintained a kick-ass patch :-)

Here is a (quite biased) overview of what's currently available:

Conque Shell
URL: http://code.google.com/p/conque/
Author: Nico Raffo (me!)
Requirements: *nix, python-enabled vim
Type: Plugin

Conque is a Vim plugin, written with Vim script and python. It turns
your Vim buffer into a terminal emulator. In INSERT mode your buffer
behaves like a standard unix terminal. In NORMAL mode you can navigate/
search/page through the terminal output.

Pros:
 * Relatively easy to install
 * Near complete VT100 support (you can run emacs in a vim buffer)
 * Use of Vim features in terminal, including syntax highlighting,
copy/paste, etc
 * Active development

Cons:
 * No Windows support (coming with Vim 7.3)
 * Can be slow, especially with programs which use a lot of terminal
colors

Vimshell
URL: http://github.com/Shougo/vimshell + http://github.com/Shougo/vimproc
Author: Shougo M
Requirements: Works on both *nix and Windows. One small, independent
component may need to be compiled from C source.
Type: Plugin

Vimshell is a shell, written in the Vim scripting language, that runs
in a Vim buffer. The shell was written to take full advantage of all
of Vim's features, for example you can use Vim's omnicomplete
features, or any other normal mode Vim commands, to edit your command
line. Great potential, but missing a few features, particularly
regarding interactive programs.

Pros:
 * Relatively easy to install
 * Edit the command line with Vim, full use of Vim features in both
normal and insert mode
 * Very fast, since there is no background process required
 * Windows support
 * Active development

Cons:
 * Very limited support of interactive programs such as bash, mysql or
python.
 * Shell has incomplete functionality compared to bash, etc.
 * Documentation only available in Japanese.


screen.vim (Vim + screen/tmux)
URL: http://www.vim.org/scripts/script.php?script_id=2711
Author: Eric Van Dewoestine
Requirements: *nix
Type: Plugin

screen.vim is a Vim plugin which streamlines and enhances the
experience of running split screen terminal with Vim running in one of
the windows and a terminal running in the other. It uses the programs
screen or tmux to manage the split windows and to run the terminal
emulation. Both of these programs are very mature, and will give a
better terminal experience than any other option. However since the
terminal is running independently of Vim, you won't be able to use Vim
commands to interact with the terminal output.

Pros:
 * Easy to install
 * Great shell support
 * Active development

Cons:
 * No use of Vim commands to manage the shell window
 * Relatively little integration between Vim and the shell


Vim-Shell
URL: http://www.wana.at/vimshell/
Author: Thomas Wanda
Requirements: *nix, patch and recompile Vim from source
Type: Extension

Vim-Shell is a Vim extension which converts a buffer into a terminal
emulator. The shell window itself is very fast and functionality is
very strong. It is works great for running complex interactive
programs. However the Vim buffer where it runs is no longer editable
(you can't scroll up, or even move the cursor). The last official
release was for Vim 7.0, although time spent searching on Google will
turn up patches for Vim 7.1 and 7.2.

Pros:
 * Near complete VT100 support (you can run emacs in a vim buffer, and
   just about anything else)
 * Very fast. Compiled into the C source

Cons:
 * Relatively difficult to install
 * No use of Vim features to navigate terminal output
 * No Windows or Mac support.
 * No development activity since 2006


Vimsh
URL: http://www.vim.org/scripts/script.php?script_id=165
Author: Brian Sturk
Requirements: python-enabled vim
Type: Plugin

Vimsh is a Vim plugin which allows you to run interactive programs in
a vim buffer. It provides a nice option for Windows use, but
functionality is overall less mature than the other options.

Pros:
 * Relatively easy to install
 * Use Vim commands to edit commands and navigate terminal output
 * Support in both *nix and Windows (no interactive programs in
   Windows)

Cons:
 * Limited functionality
 * Inactive development



 								*faq-30.2*
30.2. How do I pass the word under the cursor to an external command?

You can use the special keyword <cword> to pass the word under the cursor
to an external command. For example: >

    :!dict <cword>
<
For more information, read 

    |<cword>|

 								*faq-30.3*
30.3. How do I get the output of a shell command into a Vim buffer?

You can use the ":r !" command to get the output of a shell command into a
Vim buffer. For example, to insert the output of the "ls" shell command,
you can use the following command: >

    :r !ls
<
To insert the output of the shell command above the first line use the
following command: >

    :0r !ls
<
For more information, read 

    |:r!|

 								*faq-30.4*
30.4. How do I pipe the contents of the current buffer to an external
      command and replace the contents of the buffer with the output from
      the command?

You can use the :! command to pipe the contents of the current buffer to a
external command and replace the contents of the buffer with the output
from the command. For example, to sort the contents of the current buffer,
using the Unix sort command, you can use the following command: >

    :%!sort
<
To sort only lines 10-20, you can use the following command >

    :10,20!sort
<
Also, if you want to pipe a buffer to an external command but not put the
results back in the buffer, you can use >

    :w !sort
<
The above command will pipe the entire buffer to the sort command.  Note
that the space between the 'w' and the '!' is critical.  To pipe only a
range of lines, you can use >

    :10,20w !sort
<
The above command will pipe the lines 10-20 to the sort command.

For more information, read 

    |:range!|
    |10.9|
    |:w_c|

 								*faq-30.5*
30.5. How do I sort a section of my file?

You use the ":sort" command like this:

   :5,100sort

Using the ":sort" command provides many options, you can sort numerical on
the first found decimal number using:
   
   :%sort n

Or you can specify to sort on the text, starting at virtual column 8:

   :%sort /.*\%8v/

Alternatively can pipe a section of the file to the Unix "sort" utility to
sort the file. For example: >

    :5,100!sort
<
You can also use a visual block, and use the "!sort" command on the
selected block.

See also:
    |sort|
    |filter|

 								*faq-30.6*
30.6. How do I use Vim as a pager?

You can use Vim as a pager using the $VIMRUNTIME/macros/less.sh shell
script, supplied as part of the standard Vim distribution. This shell
script uses the $VIMRUNTIME/macros/less.vim Vim script to provide less like
key bindings.

For more information, read 

    |less|

 								*faq-30.7*
30.7. How do I view Unix man pages from inside Vim?

You can view Unix man pages, inside Vim, using the man.vim plugin supplied
as part of the standard Vim distribution. To use this plugin, add the
following line to your startup vimrc file: >

    runtime ftplugin/man.vim
<
You can also press the K key to run the program specified by the
'keywordprg' option with the keyword under the cursor. By default,
'keywordprg' is set to run man on the keyword under the cursor.

For more information, read 

    |ft-man-plugin|
    |K|
    |'keywordprg'|

 								*faq-30.8*
30.8. How do I change the diff command used by the Vim diff support?

By default, the Vim diff support uses the 'diff' command. You can change
this by changing the 'diffexpr' option.

For more information, read 

    |diff-diffexpr|
    |'diffexpr'|

 								*faq-30.9*
30.9. How do I use the Vim diff mode without folding?

You can use the following command-line to start Vim with two filenames
and use the diff mode without folding: >

    $ vim -o file1 file2 "+windo set diff scrollbind scrollopt+=hor nowrap"
<
If you like vertically split windows, then replace "-o" with "-O".

For more information, read 

    |vimdiff|

=============================================================================
 								*faq-31*
SECTION 31 - GUI VIM

 								*faq-31.1*
31.1. How do I create buffer specific menus?

Adding support for buffer specific menus is in the Vim TODO list. In the
mean time, you can try Michael Geddes's plugin, buffermenu.vim: >

    http://vim.sourceforge.net/scripts/script.php?script_id=246
<
 								*faq-31.2*
31.2. How do I change the font used by GUI Vim?

You can change the 'guifont' option to change the font used by GUI Vim.  To
display the current value of this option, you can use >

    :set guifont?
<
You can add the displayed font name to the .vimrc file to use the font
across Vim sessions. For example, add the following line to the .vimrc file
to use Andale Mono font. >

    set guifont=Andale_Mono:h10:cANSI
<
For Win32, GTK and Photon version of Vim, you can use the following command
to bringup a dialog which will help you in changing the guifont: >

    :set guifont=*
<
You can also use the -font Vim command line option to specify the font used
for normal text.

For more information, read 

    |'guifont'|
    |'guifontset'|
    |'guifontwide'|
    |font-sizes|
    |-font|
    |-boldfont|
    |-italicfont|
    |-menufont|
    |-menufontset|

 								*faq-31.3*
31.3. When starting GUI Vim, how do I specify the location of the GVIM
      window?

You can use the "-geometry" command line argument to specify the location
of the GUI Vim window. For example: >

    $ gvim -geometry 80x25+100+300
<
For more information, read 

    |31.4|
    |-geom|

 								*faq-31.4*
31.4. How do I add a horizontal scrollbar in GVim?

You can enable the horizontal scrollbar by modifying the 'guioptions'
option: >

    :set guioptions+=b
<
For more information, read 

    |'guioptions'|
    |gui-horiz-scroll|

 								*faq-31.5*
31.5. How do I make the scrollbar appear in the left side by default?

You can add the 'l' flag to the 'guioptions' option to make the scrollbar
appear in the left side. >

    :set guioptions+=l
    :set guioptions-=r
<
For more information, read 

    |'guioptions'|
    |gui-scrollbars|

 								*faq-31.6*
31.6. How do I remove the Vim menubar?

You can remove the Vim menubar by removing the 'm' flag from the
'guioptions' option: >

    :set guioptions-=m
<
For more information, read 

    |'guioptions'|

 								*faq-31.7*
31.7. I am using GUI Vim. When I press the ALT key and a letter, the menu
      starting with that letter is selected. I don't want this behavior as
      I want to map the ALT-<key> combination. How do I do this?

You can use the 'winaltkeys' option to disable the use of the ALT key to
select a menu item: >

    :set winaltkeys=no
<
For more information, read 

    |'winaltkeys'|
    |:simalt|

 								*faq-31.8*
31.8. Is it possible to scroll the text by dragging the scrollbar so that
      the cursor stays in the original location?

The way Vim is designed, the cursor position has to be in a visible spot in
normal, visual, select and insert mode. This cannot be changed without
modifying Vim. When the scrollbar is used, the cursor will be moved so that
it is always visible. Another approach to solving this problem is to use
the Vim marks. You can mark the current cursor position using ma. Then
scroll to a different part of the text and jump back to the old position
using `a. You can also try the following suggestion from the Vim Online
website: >

    http://vim.wikia.com/wiki/VimTip320
<
For more information, read 

    |mark-motions|

 								*faq-31.9*
31.9. How do I get gvim to start browsing files in a particular directory
      when using the ":browse" command?

You can set the 'browsedir' option to the default directory to use for the
":browse" command. >

    :set browsedir='<your_dir>'
<
For more information, read 

    |'browsedir'|

 								*faq-31.10*
31.10. For some questions, like when a file is changed outside of Vim, Vim
       displays a GUI dialog box. How do I replace this GUI dialog box with
       a console dialog box?

You can set the 'c' flag in the 'guioptions' option to configure Vim to use
console dialogs instead of GUI dialogs: >

    :set guioptions+=c
<
For more information, read 

    |'guioptions'|

 								*faq-31.11*
31.11. I am trying to use GUI Vim as the editor for my xxx application.
       When the xxx application launches GUI Vim to edit a file, the
       control immediately returns to the xxx application. How do I start
       GUI Vim, so that the control returns to the xxx application only
       after I quit Vim?

You have to start GUI Vim with the '-f' (foreground) command line option: >

    $ gvim -f
<
By default, GUI Vim will disconnect from the program that started Vim. With
the '-f' option, GUI Vim will not disconnect from the program that started
it.

For more information, read 

    |gui-fork|
    |-f|

 								*faq-31.12*
31.12. Why does the "Select Font" dialog doesn't show all the fonts
       installed in my system?

Vim supports only fixed width (mono-spaced) fonts. Proportional fonts are
not supported.  In the "Select Font" dialog, only fixed width fonts will be
displayed.

For more information, read 

    |font-sizes|
    |'guifont'|

 								*faq-31.13*
31.13. How do I use the mouse in Vim command-line mode?

You can set the 'c' flag in the 'mouse' option to use mouse in the Vim
command-line mode: >

    :set mouse+=c
<
For more information, read 

    |mouse-using|
    |gui-mouse|
    |09.2|

 								*faq-31.14*
31.14. When I use the middle mouse button to scroll text, it pastes the
       last copied text. How do I disable this behavior?

You can map the middle mouse button to <Nop> to disable the middle mouse
button: >

    :map  <MiddleMouse> <Nop>
    :map! <MiddleMouse> <Nop>
<
For more information, read 

    |gui-mouse-mapping|
    |<Nop>|

 								*faq-31.15*
31.15. How do I change the location and size of a GUI Vim window?

You can use the "winpos" command to change the Vim window position. To
change the size of the window, you can modify the "lines" and "columns"
options.

For example, the following commands will position the GUI Vim window at the
X,Y co-ordinates 50,50 and set the number of lines to 50 and the number of
columsn to 80. >

    :winpos 50 50
    :set lines=50
    :set columns=80
<
The arguments to the 'winpos' command specify the pixel co-ordinates of the
Vim window. The 'lines' and 'columns' options specify the number of lines
and characters to use for the height and the width of the window
respectively.

For more information, read 

    |31.4|
    |:winpos|
    |'lines'|
    |'columns'|
    |GUIEnter|

=============================================================================
 								*faq-32*
SECTION 32 - VIM ON UNIX

 								*faq-32.1*
32.1. I am running Vim in a xterm. When I press the CTRL-S key, Vim
      freezes. What should I do now?

Many terminal emulators and real terminal drivers use the CTRL-S key to
stop the data from arriving so that you can stop a fast scrolling display
to look at it (also allowed older terminals to slow down the computer so
that it did not get buffer overflows).  You can start the output again by
pressing the CTRL-Q key.

When you press the CTRL-S key, the terminal driver will stop sending the
output data. As a result of this, it will look like Vim is hung. If you
press the CTRL-Q key, then everything will be back to normal.

You can turn off the terminal driver flow control using the 'stty' command: >

    $ stty -ixon -ixoff
<
or, you can change the keys used for the terminal flow control, using the
following commands: >

    $ stty stop <char>
    $ stty start <char>
<
 								*faq-32.2*
32.2. I am seeing weird screen update problems in Vim. What can I do to
      solve this screen/display update problems?

You have to use a proper terminal emulator like xterm with correct TERM
settings (TERM=xterm) and a correct terminfo/termcap file.
For more information, read 

    |'term'|

 								*faq-32.3*
32.3. I am using the terminal/console version of Vim. In insertmode, When I
      press the backspace key, the character before the cursor is not
      erased. How do I configure Vim to do this?

You have to make sure that Vim gets the correct keycode for the backpspace
key. You can try using the command: >

    :fixdel
<
Make sure the TERM environment variable is set to the correct terminal
name. You can try using the 'stty' command: >

    $ stty erase ^H
<
where, you have to enter the ^H character by pressing the CTRL-V key and
then the CTRL-H key.

For more information, read 

    |:fixdel|
    |Linux-backspace|
    |NetBSD-backspace|

 								*faq-32.4*
32.4. I am using Vim in a xterm. When I quit Vim, the screen contents are
      restored back to the original contents. How do I disable this?

The xterm has a capability called "alternate screen".  If this capability
is present, vim switches to that alternate screen upon startup and back on
exit, thus restoring the original screen contents.  To disable this
feature, add the following line to your .vimrc file: >

    :set t_ti= t_te=
<
For more information, read 

    |restorescreen|
    |xterm-screens|

 								*faq-32.5*
32.5. When I start Vim, it takes quite a few seconds to start. How do I
      minimize the startup time?

This may be related to Vim opening the X display for setting the xterm
title and using the X clipboard. Make sure the DISPLAY variable is set to
point to the correct host. Try using the command line: >

    $ vim -X
<
This will prevent Vim from opening the X display. With this command-line
option, the X clipboard cannot be used and also Vim will not be able to
change the xterm title.

You can also set the 'clipboard' option to >

    :set clipboard=exclude:.*
<
This has the same effect as using the -X command-line argument.

For more information, read 

    |-X|
    |'clipboard'|

 								*faq-32.6*
32.6. How can I make the cursor in gvim in unix stop blinking?

You can modify the 'guicursor' option, to stop the cursor from blinking.
For example: >

    :set guicursor=a:blinkon0
<
For more information, read 

    |'guicursor'|

 								*faq-32.7*
32.7. How do I change the menu font on GTK Vim?

You can modify the ~/.gtkrc file to change the menu font on GTK Vim. For
example: >

    style "default"
    { font ="smooth09" }
    class "*" style "default"
<
The last line changes the font of all widgets.

For more information, read 

    |gui-gtk|

 								*faq-32.8*
32.8. How do I prevent <Ctrl-Z> from suspending Vim?

You can map <Ctrl-Z> to prevent the suspending. Here are some suggestions:

- Make <Ctrl-Z> do nothing: >

    :map <C-Z> <Nop>
<
- Make <Ctrl-Z> start a shell: >

    :map <C-Z> :shell<CR>
<
- Make <Ctrl-Z> give an error message: >

    :map <C-Z> :"suspending disabled<CR>
<
For the last example, the double quote is necessary in order to keep the
message on the status line.

 								*faq-32.9*
32.9. When I kill the xterm running Vim, the Vim process continues to run
      and takes up a lot of CPU (99%) time. Why is this happening?

When Vim is built with support for Python interface, you will have this
problem. This is a known problem with the python thread library and Vim.  To
solve this problem, use a Vim binary built without the Python interface.

For more information, read 

    |+python|
    |python|

 								*faq-32.10*
32.10. How do I get the Vim syntax highlighting to work in a Unix terminal?

The easiest and simplest way to get Vim syntax highlighting is to use the
GUI version of Vim (GVIM). To get syntax highlighting to work in the
console/terminal version of Vim, you have to run a terminal emulator (like
Xfree86 xterm or rxvt or dtterm) that supports color. Note that if a
terminal emulator supports changing the background and foreground colors,
that does not mean that it also supports ANSI escape sequences for changing
the color. You can download the latest version of Xfree86 xterm from
http://dickey.his.com/xterm/xterm.html. You can download the latest version
of rxvt from http://www.rxvt.org. You have to install the terminfo/termcap
file that supports colors for the terminal emulator. Also, set the TERM
environment variable to the correct name of the term that supports colors.

You can use the colortest.vim script supplied with the Vim runtime
package to test the color setup. To use this script, follow these steps: >

    :e $VIMRUNTIME/syntax/colortest.vim
    :source %
<
For more information, read 

    |06.2|
    |terminal-colors|
    |termcap-colors|
    |startup-terminal|
    |xterm-color|
    |colortest.vim|

=============================================================================
 								*faq-33*
SECTION 33 - VIM ON MS-WINDOWS

 								*faq-33.1*
33.1. In MS-Windows, CTRL-V doesn't start the blockwise visual mode. What
      happened?

The mswin.vim script provides key mappings and options to make Vim behave
like a MS-Windows application. One of the keys mapped is CTRL-V which is
used for pasting text in MS-Windows applications. This will disable the use
of CTRL-V to start the blockwise visual mode. The mswin.vim script maps
CTRL-Q for staring the blockwise visual mode. So you can use CTRL-Q instead
of CTRL-V.

For more information, read 

    |CTRL-V|
    |CTRl-V-alternative|
    |CTRL-Q|
    |10.5|

 								*faq-33.2*
33.2. When I press the CTRL-Y key, it acts like the CTRL-R key. How do I
      configure Vim to treat CTRL-Y as CTRL-Y?

The mapping of the CTRL-Y key to the CTRL-R key is done by the mswin.vim
script. The mswin.vim script maps CTRL-Y to make Vim behave like a standard
MS-Windows application. This is explained in ":help CTRL-Y". You can either
comment out the line in mswin.vim that maps the CTRL-Y key or you can
remove the line in your .vimrc file that sources the mswin.vim script.

 								*faq-33.3*
33.3. How do I start GUI Vim in a maximized window always?

You can use the "simalt" command to maximize the Vim window. You can use
the GUIEnter autocmd to maximize the Vim window on startup: >

    autocmd GUIEnter * simalt ~x
<
For more information, read 

    |:simalt|
    |GUIEnter|
    |gui-win32-maximized|

 								*faq-33.4*
33.4. After doing some editing operations, Vim freezes. The cursor becomes
      an empty rectangle. I am not able enter any characters. What is
      happening?

Most probably, you used the mouse wheel to scroll the text in Vim. There is
a known problem in using intellimouse mouse wheel with Vim. To avoid this
problem, disable Universal scrolling support for Vim.

For more information, read 

    |intellimouse-wheel-problems|

 								*faq-33.5*
33.5. I am using Windows XP, the display speed of maximized GVim is very
      slow. What can I do to speed the display updates?

This may be due to the fact that you have enabled 'Smooth edges of screen
fonts' in the display properties. Try turning off font smoothing or try
changing the smoothing method to "Standard".

 								*faq-33.6*
33.6. What are the recommended settings for using Vim with cygwin?

You may want to set the following shell related Vim settings: >

    :set shellcmdflag=-c
    :set shellquote=
    :set shellslash          " Use the forward slash for expansion.
    :set shellxquote=\"
    :set shell=d:\cygwin\bin\bash.exe " Use the bash shell
    :set shellpipe=2>&1| tee
    :set shellredir=>%s 2>&1
<
 								*faq-33.7*
33.7. I am trying to use GNU diff with Vim diff mode. When I run the diff
      from command line, it works. When I try to use the diff with Vim it
      doesn't work. What should I do now?

There is a problem with using GNU diff with Vim. You can try using the
GNU diff.exe built by Ron Aaron from the following link: >

    http://www.mossbayeng.com/~ron/vim/builds.html
<
 								*faq-33.8*
33.8. Is it possible to use Vim as an external editor for MS-Windows
      Outlook email client?

You can use the "cubiclevim" COM Add-In to use Vim as an external editor
for MS-Windows Outlook email client. Visit the following URL for more
information: >

    http://sourceforge.net/projects/cubiclevim
<
Note that currently this works only with MS-Office 2000 and XP.

Also the plugin OutlookVim might be worth a look:

http://www.vim.org/scripts/script.php?script_id=3087

 								*faq-33.9*
33.9. I am using Vim to edit HTML files. How do I start internet explorer
      with the current file to preview the HTML file?

You can use the following command: >

    :!start c:\progra~1\intern~1\iexplore.exe file://%:p<CR>
<
 								*faq-33.10*
33.10. I would like to use Vim with Microsoft Visual Studio. How do I do
       this?

You have to download and use the OLE version of Vim (for example:
gvim61ole.zip). This file also contains instructions on how to use Vim with
Visual Studio.

For more information, read 

    |MSVisualStudio|

 								*faq-33.11*
33.11. Where do I place the _vimrc and _gvimrc files?

You can place the _vimrc and _gvimrc files under the directory pointed to
by the VIM environment variable. If you are sharing this system with other
users, then you can place the files in a directory and set the HOME
environment variable to this directory.

For more information, read 

    |$HOME-use|
    |_vimrc|

 								*faq-33.12*
33.12. Everytime I save a file, Vim warns about the file being changed
       outside of Vim. Why?

If you get the following warning message, everytime you save a file: >

    WARNING: The file has been changed since reading it!!!
    Do you really want to write to it (y/n)?
<
then this problem could be related to a bug in MS-Windows on the day
daylight saving time starts.  Vim remembers the timestamp of the file after
it was written.  Just before the next write the timestamp is obtained again
to check if the file was changed outside of Vim.  This works correctly,
except on the day daylight saving time starts.

This problem will go away the next day after the day the daylight saving
time starts.

For more information, read 

    |W11|

=============================================================================
 								*faq-34*
SECTION 34 - PRINTING

 								*faq-34.1*
34.1. How do I print a file along with line numbers for all the lines?

You can set the 'printoptions' option and use the ":hardcopy" command to
print your file: >

    :set printoptions=number:y
    :hardcopy
<
For more information, read 

    |'printoptions'|
    |:hardcopy|

 								*faq-34.2*
34.2. How do I print a file with the Vim syntax highlighting colors?

You can use the ":hardcopy" command to print a file with the Vim syntax
highlighting colors. You can also convert your file to a HTML file using
the 2html.vim script and print the HTML file.

For more information, read 

    |syntax-printing|
    |2html.vim|
    |:hardcopy|
    |printing|

=============================================================================
 								*faq-35*
SECTION 35 - BUILDING VIM FROM SOURCE

 								*faq-35.1*
35.1. How do I build Vim from the sources on a Unix system?

For a Unix system, follow these steps to build Vim from the sources:

- Download the source and run-time files archive (vim-##.tar.bz2) from the
  ftp://ftp.vim.org/pub/vim/unix directory.
- Extract the archive using the bzip2 and tar utilities using the command: >

        $ bunzip2 -c <filename> | tar -xf -
<
- Alternatively, download the source from the mercurial repository:
  http://code.google.com/p/vim/source/checkout
- Run the 'make' command to configure and build Vim with the default
  configuration.
- Run 'make install' command to install Vim in the default directory.

To enable/disable various Vim features, before running the 'make' command
you can run the 'configure' command with different flags to include/exclude
the various Vim features. To list all the available options for the
'configure' command, use: >

    $ configure -help
<
For more information, read 

    |install|

 								*faq-35.2*
35.2. How do I install Vim in my home directory or a directory other
      than the default installation directory in Unix?

To install Vim in a directory other than the default installation
directory, you have to specify the directory using the --prefix option
while running the configure script. >

    $ ./configure --prefix=/users/xyz
<
You can enable/disable various Vim feature by supplying different arguments
to the configure script. For more information about all these options, run >

    $ ./configure --help
<
For more information, read 

    |install-home|
    |install|

 								*faq-35.3*
35.3. How do I build Vim from the sources on a MS-Windows system?

For a MS-Windows system, Vim can be built using either the Visual C++
compiler or the Borland C++ compiler or the Ming GCC compiler or the cygwin
gcc compiler. Follow these steps to build Vim from the sources for
MS-Windows:

- Download the source (vim##src.zip), runtime (vim##rt.zip) and the extra
  (vim-##-extra.tar.gz) archives from the ftp://ftp.vim.org/pub/vim/pc
  directory.
- Extract the archives into a directory (for example, c:\vimsrc)
- Alternatively, download the source from the mercurial repository:
  http://code.google.com/p/vim/source/checkout
- Depending on the installed compiler, you can use the corresponding
  makefile to build the Vim sources. For Visual C++ use the Make_mvc.mak
  makefile, for borland C++ use the Make_bc5.mak makefile, for ming GCC use
  the Make_ming.mak makefile, for cygwin gcc use the Make_cyg.mak makefile.

Depending on whether you want to build the GUI version of Vim or the
console version of Vim, you have to pass different arguments to the
makefiles. After successfully building the sources, you can copy the
vim.exe or gvim.exe file to the desired directory along with the files from
the runtime archive.

For more information, read 

    |install|

 								*faq-35.4*
35.4. The Vim help, syntax, indent files are missing from my Vim
      installation. How do I install these files?

The Vim help, syntax, indent and other runtime files are part of the Vim
runtime package. You need to download and install the Vim runtime package.
For example, for MS-Windows, the name of the Vim 6.1 runtime package is
vim61rt.zip.

For more information, read 

    |install|

 								*faq-35.5*
35.5. I have built Vim from the source and installed the Vim package using
      "make install". Do I need to keep the Vim source directory?

No. Once you have built and installed Vim in some directory other than the
original source directory (for example, /usr/bin or /usr/local/bin), then
you can remove the source directory.

 								*faq-35.6*
35.6. How do I determine the Vim features which are enabled at compile
      time?

You can use the ":version" command to determine the Vim features that are
enabled at compile time. The features that are enabled will be prefixed
with a "+". The features that are not enabled will be prefixed with a "-".

If you want to test for a feature in a script, you can use the has()
function: >

    if has("menu")
        " Set up some menus
    endif
<
For more information, read 

    |:version|
    |+feature-list|
    |has()|

 								*faq-35.7*
35.7. Can I build Vim without the GUI support?

Yes. You can build Vim by optionally enabling/disabling many of the
features including GUI.

For more information, read 

    |install|

 								*faq-35.8*
35.8. When building Vim on a Unix system, I am getting "undefined reference
      to term_set_winsize' error. How do I resolve this error?

You will get this error when the build process is not able to locate the
termlib, termcap or ncurses library. You have to install the ncurses-dev
package to resolve this error.

 								*faq-35.9*
35.9. Vim configure keeps complaining about the lack of gtk-config while
      trying to use GTK 2.03. This is correct, since in GTK 2 they moved to
      using the generic pkg-config. I can get pkg-config to list the
      various includes and libs for gtk, but for some reason the configure
      script still isn't picking this up.

Use the following shell script named gtk-config: >

    #!/bin/sh
    pkg-config gtk+-2.0 $1 $2
<

=============================================================================
 								*faq-36*
SECTION 36 - VARIOUS

 								*faq-36.1*
36.1. How do I edit binary files with Vim?

You can set the following options to edit binary files in Vim: >

    :set binary
    :set display=uhex
<
You can also use the "-b" command-line option to edit a binary file: >

    $ vim -b <binary_file_name>
<
You can also use the xxd utility (part of the Vim distribution) to edit
binary files.

For more information, read 

    |23.4|
    |edit-binary|
    |hex-editing|
    |-b|
    |'binary'|
    |'endofline'|
    |'display'|

 								*faq-36.2*
36.2. How do I disable the visual error flash and the error beep?

You can disable both the visual error flash and the error beep using the
following command: >

    :set visualbell t_vb=
<
For more information, read 

    |'visualbell'|
    |'errorbells'|
    |t_vb|

 								*faq-36.3*
36.3. How do I display the ascii value of a character displayed in a
      buffer?

You can use the 'ga' command to display the ascii value of a displayed
character.

For more information, read 

    |ga|
    |:ascii|

 								*faq-36.4*
36.4. Can I use zero as a count for a Vim command?

You cannot use zero as a count for a Vim command, as "0" is a command on
its own, moving to the first column of the line.

For more information, read 

    |0|
    |count|

 								*faq-36.5*
36.5. How do I disable the Vim welcome screen?

You can disable the Vim welcome screen, by adding the 'I' flag to the
'shortmess' option: >

    :set shortmess+=I
<
For more information, read 

    |:intro|
    |'shortmess'|

 								*faq-36.6*
36.6. How do I avoid the "hit enter to continue" prompt?

Vim will prompt you with the "hit enter to continue" prompt, if there are
some messages on the screen for you to read and the screen is about to be
redrawn.  You can add the 'T' flag to the 'shortmess' option to truncate
all messages. This will help in avoiding the hit-enter prompt: >

    :set shortmess+=T
<
You can also increase the command height by setting the 'cmdheight' option: >

    :set cmdheight=2
<
For more information, read 

    |hit-enter|
    |avoid-hit-enter|
    |'shortmess'|
    |'cmdheight'|

 								*faq-36.7*
36.7. How do I invoke Vim from command line to run a group of commands on a
      group of files?

There are several ways to invoke Vim from command line to run a group of
commands on a group of files. You can use a set of  "-c" command line
options to specify a group of commands: >

    $ vim -c "<ex_command_1>" -c "<ex_command_2>" *.txt
<
Each of the ex-command specified with the "-c" command line option is
executed one by one sequentially. You can also use a single "-c" command
line option and the "|" character to separate the ex commands: >

    $ vim -c "<ex_command_1> | <ex_command_2>" *.txt
<
In the above command, if an ex command fails, then all the remaining ex
commands will not be executed.

For example, to replace "ABC" with "DEF" in a file from the command-line,
you can use the following command: >

    $ vim -c "%s/ABC/DEF/ge | update" myfile.txt
<
To replace "ABC" with "DEF" in multiple files from the command-line,
you can use the following command: >

    $ vim -c "argdo %s/ABC/DEF/ge | update" *.txt
<
You can store the group of commands into a file and use the "-s" command
line option to run the commands on a set of files. For example, if the
group of commands are stored in the file mycmds.txt, then you can use the
following command: >

    $ vim -s mycmds.txt *.pl
<
For more information, read 

    |-c|
    |-s|

 								*faq-36.8*
36.8. How do I use a normal mode command from insert mode without leaving
      the insert mode?

You can use a normal command from insert mode, without leaving the insert
mode, by first pressing the CTRL-O key and then follow that with a single
normal mode command.

To execute more than one normal mode command, press the CTRL-L key,
followed by any number of normal mode commands and then press <Esc> to get
back to the insert mode.

For more information, read 

    |i_CTRL-O|
    |i_CTRL-L|

 								*faq-36.9*
36.9. How do I start Vim in insert mode?

You can start Vim in insert mode using the ":startinsert" ex command. >

    $ vim +startinsert myfile.txt
<
The above command will open the file "myfile.txt" and start insert mode
with the cursor in front of the first character on the first line.  To open
the file and start appending after the last character on the last line,
you can use the following command: >

    $ vim + +startinsert! myfile.txt
<
For more information, read 

    |:startinsert|

 								*faq-36.10*
36.10. How do I use Copy and Paste with Vim?

You should first check the output of the ":version" command and make
sure that +xterm-clipboard is present.

When running Vim in an xterm, you can either let Vim control the mouse
or let xterm control the mouse. This is configured by the 'mouse' option.

If the 'mouse' option is not set (or set to the default value), then Vim will
not control the mouse. You cannot move the Vim text cursor using the
mouse. When you select some text using the mouse, xterm will copy
it to the X11 cut buffer. When you press both the mouse buttons,
xterm will paste the text from the cut buffer.

If the 'mouse' option is set to 'a' or some other value, then Vim controls
the mouse. The mode (normal or insert or visual, etc) in which Vim
controls the mouse is configured by the 'mouse' option. You can move
the Vim text cursor using the mouse. When you select some text,
the 'clipboard' option setting is used to determine whether to transfer
the selected text to the clipboard or not. The default setting is to
transfer the selected text to the clipboard. If you want to use the
xterm selection mechanism in this mode, then you can press the
<Shift> key. If you press <Shift> key when selecting text using the
mouse, then Vim doesn't control the mouse and xterm controls the
mouse.

In the GUI mode, Copy and Paste should just work, depending on the 'mouse'
setting.

   :help 'clipboard'
   :help x11-selection
   :help clipboard
   :help 'go-a'
   :help 'mouse'
   :help xterm-copy-paste
   :help 9.3

=============================================================================
 								*faq-37*
SECTION 37 - UNICODE
Author: Tony Mechelynck <antoine.mechelynck AT belgacom.net>

 								*faq-37.1*
37.1. Is it possible to create Unicode files using Vim?

Yes. It may be more or less complicated depending on the keyboard and fonts
available to you, but it is always possible to encode any possible Unicode
codepoint (and some illegal ones) into a file. To create a Unicode file
using Vim, you should have compiled Vim with the "+multi_byte" compile-time
option.  You can get more information about Unicode from the following
sites: >

    http://www.unicode.org
    http://www.cl.cam.ac.uk/~mgk25/unicode.html
<
For more information, read 

    |multibyte|
    |usr_45.txt|

 								*faq-37.2*
37.2. Which Vim settings are particularly important for editing Unicode
      files?

The most important are the various "encoding" options, i.e., 'encoding',
'fileencoding', 'fileencodings' and 'termencoding'. The boolean option
'bomb' is also significant.

For more information, read 

    |'encoding'|
    |'fileencoding'|
    |'fileencodings'|
    |'termencoding'|
    |'bomb'|

 								*faq-37.3*
37.3. What is the 'encoding' option?

Basically, the 'encoding' option defines how Vim will represent your data
internally.  However, all Unicode encodings are represented internally as
utf-8 and converted (if necessary) when reading and writing.

For more information, read 

    |'encoding'|

 								*faq-37.4*
37.4. How does Vim name the various Unicode encodings?

Utf-8 is called utf-8 or utf8; utf-16 is called ucs-2 or ucs2; utf-32 is
called ucs-4 or ucs4. Also, you may specify endianness (except for utf-8
which does not vary for endianness) by appending le for little-endian or be
for big-endian. If you create a file with an encoding of ucs-2 or ucs-4
without specifying endianness, Vim will use what is typical of your
machine.

For more information, read 

    |encoding-names|
    |encoding-values|
    |encoding-table|

 								*faq-37.5*
37.5. How does Vim specify the presence or absence of a byte-order mark?

When reading a file, if the 'fileencodings' option includes "ucs-bom", Vim
will check for a byte-order mark. When writing a file, if the 'bomb' option
is set, Vim will write a byte-order mark on files whose encoding warrants
it.

For more information, read 

    |'fileencodings'|
    |'bomb'|

 								*faq-37.6*
37.6. What is the 'fileencoding' option?

The 'fileencoding' option defines the particular encoding which Vim will
use to write a file. If empty, then the value of the 'encoding' option is
the default.

For more information, read 

    |'fileencoding'|

 								*faq-37.7*
37.7. What is the 'fileencodings' option?

The 'fileencodings' option defines the heuristics used by Vim when opening
an existing file. It is a comma separated list of encodings. A special
name, "ucs-bom" is used to indicate that Vim should check for the presence
of a byte-order mark; however, it will not be recognised if it comes after
"utf-8".  Normally, "ucs-bom" (if present) should be first in the list.

When Vim opens a file, it checks it against the encodings listed in
'fileencodings'. The first one that matches is used. If there is no match,
then Vim sets 'fileencoding' to the null string, i.e., the value of
'encoding' will be used.

For more information, read 

    |'fileencodings'|
    |'encoding'|

 								*faq-37.8*
37.8. What is the 'termencoding' option?

The 'termencoding' option defines how your keyboard encodes the data you
type.  If empty, Vim assumes that it has the same value as 'encoding'.
Usually it should be set to something that matches your locale.

For more information, read 

    |'termencoding'|
    |locale|

 								*faq-37.9*
37.9. What is the 'bomb' option?

When reading a file with "ucs-bom" present in the 'fileencodings' option,
Vim will set the 'bomb' option on or off depending on the presence or
absence of a byte-order mark at the start of the file. When writing, Vim
will write a byte-order mark if the 'bomb' option is set. You may set or
unset it manually do make Vim write, or not write, the b.o.m.

For more information, read 

    |'bomb'|

 								*faq-37.10*
37.10. Where can I find an example of a typical use of all these options?

There is a "tip", with explains them in different words with an example, at

http://vim.wikia.com/wiki/VimTip246

 								*faq-37.11*
37.11. How can I insert Unicode characters into a file using Vim?

Several methods are available:

- Characters present on your keyboard can be typed in the usual way, even
  those which require a "dead-key" prefix, like (for instance) the
  circumflex on French keyboards.
- Characters for which a digraph is defined can be typed as two characters
  prefixed by <Ctrl-K>.
- If you have set the 'digraph' option, you can enter the characters for
  which a digrph is defined as <char1><BS><char2>.
- Any character can be entered by using a <Ctrl-V> prefix (or <Ctrl-Q> if
  <Ctrl-V> is remapped to paste from the clipboard).

For more information, read 

    |digraphs|
    |'digraph'|
    |i_CTRL-V_digit|

 								*faq-37.12*
37.12. How can I know which digraphs are defined and for which characters?

First set the 'encoding' option properly (for instance, to utf-8), then use
the :digraphs command to list the currently defined digraphs.

For more information, read 

    |:digraphs|
    |'encoding'|


 vim:tw=78:ts=8:ft=help:norl:

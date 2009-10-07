# $FreeBSD: src/share/skel/dot.cshrc,v 1.10.2.2 2000/07/15 03:31:10 rwatson Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA

# A righteous umask
umask 22

set path = ($path /opt/local/sbin /opt/local/bin ~/bin)

setenv	EDITOR	vim
setenv	PAGER	less
setenv	BLOCKSIZE	K
setenv  JAVA_HOME /System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
setenv  JRE_HOME  /System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set filec
	set history = 1000
	set savehist = 1000
	set mail = (/var/mail/$USER)
	if ( $?tcsh) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
		set prompt = "%n@%m:%~%# "
	endif
endif

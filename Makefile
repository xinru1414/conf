
link:
	ln -s ~/conf/oh-my-zsh/custom/themes/jbb.zsh-theme ~/.oh-my-zsh/custom/themes/jbb.zsh-theme
	ln -s ~/conf/rc ~/.rc
	ln -s ~/conf/oh-my-zsh/custom/plugins/amazon ~/.oh-my-zsh/custom/plugins/amazon

clean:
	rm -f ~/.rc
	rm -f ~/.oh-my-zsh/custom/plugins/amazon
	rm -f ~/.oh-my-zsh/custom/themes/jbb.zsh-theme

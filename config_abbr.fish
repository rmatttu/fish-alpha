if status --is-interactive
	set -g fish_user_abbreviations

	abbr -a .. cd ../
	abbr -a ... cd ../..
	abbr -a .... cd ../../..
	abbr -a l ls -lF
	abbr -a ll ls -laF
	abbr -a lst ls -ltrF
	abbr -a la ls -laF
	abbr -a mkdir mkdir -p
	abbr -a mv mv -i
	abbr -a cp cp -i
	abbr -a rm rm -i

	abbr -a h history
	abbr -a tailf tail -f
	abbr -a diff diff -U1
	abbr -a diffc colordiff

	abbr -a so source
	abbr -a sob source ~/.bash_profile
	abbr -a sof source ~/.config/fish/config.fish
	abbr -a vb vim ~/.bash_profile
	abbr -a vf vim ~/.config/fish/config.fish
	abbr -a vfa vim ~/.config/fish/config_abbr.fish

	abbr -a v vim
	abbr -a vi vim

	abbr -a gs git status
	abbr -a gd git diff
	abbr -a gdd git diff --cached
	abbr -a gl git log
	abbr -a gla "git log --graph --all --pretty='format:%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date relative"
	abbr -a ga git add
	abbr -a gc git commit
	abbr -a gsh git push
	abbr -a gll git pull
	abbr -a gch git checkout

	abbr -a dcu docker-compose up
	abbr -a dcud docker-compose up -d
	abbr -a dcd docker-compose down

	abbr -a ht "head -n 1 | tail -n 1"
	abbr -a jql "jq -C '.' | less -R"
  abbr -a ghql "cd (ghq list --full-path | peco)"
end

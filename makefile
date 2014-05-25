default:
	@echo "targets:"
	@echo "  install"
	@echo "  uninstall"

yt-watch.script:
	cp src/yt-watch ./$@
	chmod 755 $@

yt-watch.autocomplete:
	cp src/yt-watch-ac ./$@

.yt-watchrc:
	cp -p src/yt-watchrc ./$@

install: yt-watch.script yt-watch.autocomplete .yt-watchrc
	mv yt-watch.script /usr/local/bin/yt-watch
	mv yt-watch.autocomplete /etc/bash_completion.d/yt-watch
	mv .yt-watchrc $(HOME)

uninstall:
	rm /usr/local/bin/yt-watch
	rm /etc/bash_completion.d/yt-watch
	rm $(HOME)/.yt-watchrc

.PHONY: install uninstall

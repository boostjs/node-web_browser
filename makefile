man: \
	man/node-web_browser.2 \
	man/node-web_browser.open.2 \

man/node-web_browser.2: doc/api/readme.md
	mkdir -p $(@D)
	pandoc \
		--metadata section=2 \
		--metadata title=`grep \$<` \
		--output $@ $<

man/node-web_browser.%.2: doc/api/%.md
	mkdir -p $(@D)
	pandoc \
		--metadata section=2 \
		--output $@ $<

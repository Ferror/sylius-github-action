release:
	git add .
	git commit -m "change"
	git tag -a -m "tag" v6
	git push --follow-tags

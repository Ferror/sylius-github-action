release:
	git add .
	git commit -m "change"
	git tag -a -m "tag" v4
	git push --follow-tags

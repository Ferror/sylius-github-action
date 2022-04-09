release:
	git add .
	git commit -m "change"
	git tag -a -m "tag" v5
	git push --follow-tags

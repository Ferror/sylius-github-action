release:
	git add .
	git commit -m "change"
	git tag -a -m "tag" v7
	git push --follow-tags

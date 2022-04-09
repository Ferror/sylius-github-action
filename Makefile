release:
	git add .
	git commit -m "change"
	git tag -a v4
	git push --follow-tags

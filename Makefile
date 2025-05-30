.PHONY: push
.PHONY: status


status:
	git status

push:
	git add .
	git commit -m 'Novo push'
	git push -u origin main
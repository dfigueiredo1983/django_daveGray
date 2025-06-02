.PHONY: push
.PHONY: pull
.PHONY: remote
.PHONY: status


status:
	git status

push:
	ifndef m
		$(error VocÊ precisa passar uma mensagem com m="Sua mensagem para o commit")
	endif
		git add .
		git commit -m "$(m)"
		git push -u origin main

pull:
	git pull origin main

remote:
	git remote -v

FLATUI = ./css/style.css
FLATUI_LESS = ./less/style.less
DATE=$(shell date +%I:%M%p)
CHECK=\033[32m✔\033[39m
HR=\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#


#
# BUILD CSS
#



build:
	@echo "\n${HR}"
	@echo "Compilando CSS..."
	@echo "${HR}\n"

	@./node_modules/.bin/recess --compile ${FLATUI_LESS} > ${FLATUI}
	@echo "Compilando LESS com Recess...	${CHECK} Done"

	@./node_modules/.bin/recess --compress ${FLATUI_LESS} > ${FLATUI}
	@echo "Comprimindo LESS com Recess...	${CHECK} Done"

	@echo "\n${HR}"
	@echo "Flat UI Bootstrap compilado com sucesso em ${DATE}."
	@echo "${HR}\n"
	
	@echo "Obrigado por usar Apiki Flat UI Bootstrap!"
	@echo "<3 @apikiWordPress - @keppelen - @bernarddeluna\n"
;	BATTLE CITY
jmp main

;********************************************************;
;                         DADOS                          ;
;********************************************************;

; ------------- TANQUE DO JOGADOR 1 -----------------;
; Variaveis para controle de posicao do tanque do jogador 1
posTanque1 : var #1 			; Posicao do tanque com realacao ao mapa de tijolos
posTanque1Ant : var #1 		; Posicao anterior do tanque nos tijolos
posTanque1Out : var #1 		; Posicao do tanque com relacao a tela
posTanque1OutAnt : var #1 	; Posicao anterior do tanque na tela
; Variaveis para controle de direcao do tanque do jogador 1
; UP = 0, RIGHT = 4, DOWN = 8, LEFT = 12
dirTanque1 : var #1 		; Direcao atual do tanque
dirTanque1Ant : var #1 	; Direcao anterior do tanque
; -------------------------------------------------;

; -------------- TIRO DO JOGADOR 1 ------------------;
; Variaveis para controle de posicao do tiro do tanque do jogador 1
posTiro1 : var #1 	; Posicao do tiro com relacao aos tijolos
posTiro1Out : var #1 ; Posicao do tiro na tela
; Direcao do tiro
dirTiro1 : var #1 ; UP = 0, RIGHT = 4, DOWN = 8, LEFT = 12, NULL = 1
; -------------------------------------------------;


; ------------- TANQUE DO JOGADOR 2 -----------------;
; Variaveis para controle de posicao do tanque do jogador 2
posTanque2 : var #1 			; Posicao do tanque com realacao ao mapa de tijolos
posTanque2Ant : var #1 		; Posicao anterior do tanque nos tijolos
posTanque2Out : var #1 		; Posicao do tanque com relacao a tela
posTanque2OutAnt : var #1 	; Posicao anterior do tanque na tela
; Variaveis para controle de direcao do tanque do jogador 2
; UP = 0, RIGHT = 4, DOWN = 8, LEFT = 12
dirTanque2 : var #1 		; Direcao atual do tanque
dirTanque2Ant : var #1 	; Direcao anterior do tanque
; -------------------------------------------------;

; -------------- TIRO DO JOGADOR 2 ------------------;
; Variaveis para controle de posicao do tiro do tanque do jogador 2
posTiro2 : var #1 	; Posicao do tiro com relacao aos tijolos
posTiro2Out : var #1 ; Posicao do tiro na tela
; Direcao do tiro
dirTiro2 : var #1 ; UP = 0, RIGHT = 4, DOWN = 8, LEFT = 12, NULL = 1
; -------------------------------------------------;


; -> CARACTERES DE TANQUE.
tanqueChars: string "abcdefghijklmnop"

; -> CARACTERES DE TIRO.
tiroChars: string "$%  &'  $(  )'"

; -> MARGEM DA TELA DO JOGO. cor: cinza
margemLinha0:  string "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
margemLinha1:  string "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
margemLinha2:  string "@@@@               qr               @@@@"
margemLinha3:  string "@@@@               st               @@@@"
margemLinha4:  string "@@@@                                @@@@"
margemLinha5:  string "@@@@                                @@@@"
margemLinha6:  string "@@@@                                @@@@"
margemLinha7:  string "@@@@                                @@@@"
margemLinha8:  string "@@@@                                @@@@"
margemLinha9:  string "@@@@                                @@@@"
margemLinha10: string "@@@@                                @@@@"
margemLinha11: string "@@@@                                @@@@"
margemLinha12: string "@@@@                                @@@@"
margemLinha13: string "@@@@                                @@@@"
margemLinha14: string "@@@@                                @@@@"
margemLinha15: string "@@@@                                @@@@"
margemLinha16: string "@@@@                                @@@@"
margemLinha17: string "@@@@                                @@@@"
margemLinha18: string "@@@@                                @@@@"
margemLinha19: string "@@@@                                @@@@"
margemLinha20: string "@@@@                                @@@@"
margemLinha21: string "@@@@                                @@@@"
margemLinha22: string "@@@@                                @@@@"
margemLinha23: string "@@@@                                @@@@"
margemLinha24: string "@@@@                                @@@@"
margemLinha25: string "@@@@                                @@@@"
margemLinha26: string "@@@@               qr               @@@@"
margemLinha27: string "@@@@               st               @@@@"
margemLinha28: string "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
margemLinha29: string "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

; -> TIJOLOS. cor: marrom
tijolosLinha0:  string "                                        "
tijolosLinha1:  string "                                        "
tijolosLinha2:  string "                                        "
tijolosLinha3:  string "                                        "
tijolosLinha4:  string "      ###  ###  ###  ###  ###  ###      "
tijolosLinha5:  string "      ###  ###  ###  ###  ###  ###      "
tijolosLinha6:  string "      ###  ###  ###  ###  ###  ###      "
tijolosLinha7:  string "      ###  ###  ###  ###  ###  ###      "
tijolosLinha8:  string "      ###  ###  ########  ###  ###      "
tijolosLinha9:  string "      ###  ###  ########  ###  ###      "
tijolosLinha10: string "      ###  ###  ########  ###  ###      "
tijolosLinha11: string "      ###  ###  ###  ###  ###  ###      "
tijolosLinha12: string "      ###  ###            ###  ###      "
tijolosLinha13: string "      ###  ###            ###  ###      "
tijolosLinha14: string "                ###  ###                "
tijolosLinha15: string "                ###  ###                "
tijolosLinha16: string "         #####            #####         "
tijolosLinha17: string "         #####            #####         "
tijolosLinha18: string "    ###         ###  ###         ###    "
tijolosLinha19: string "    ###         ########         ###    "
tijolosLinha20: string "           ###  ########  ###           "
tijolosLinha21: string "      ###  ###  ###  ###  ###  ###      "
tijolosLinha22: string "      ###  ###  ###  ###  ###  ###      "
tijolosLinha23: string "      ###  ###            ###  ###      "
tijolosLinha24: string "      ###  ###            ###  ###      "
tijolosLinha25: string "      ###  ###   ######   ###  ###      "
tijolosLinha26: string "                 ##  ##                 "
tijolosLinha27: string "                 ##  ##                 "
tijolosLinha28: string "                                        "
tijolosLinha29: string "                                        "




;********************************************************;
;                         CODIGO                         ;
;********************************************************;

main:
	; Apaga todos os caracteres da tela
	call ApagaTela
	
	; Imprime a margem
	call ImprimeMargem
	
	; Imprime os tijolos
	call ImprimeTijolos

	; Spawna os tanques
	call SpawnTanque1
	call SpawnTanque2
	
	; Loop principal do jogo
	loadn r0, #0 ; Contador de loops, c = 1 (inicia com 1 para não spawnar tanque inimigo direto)
	Loop:
	
		loadn r1, #10 	; Variavel para verificar se o contador de loops eh multiplo de 10
		mod r1, r0, r1 	; c % 10
		cz MoveTanque1	; Chama rotina de movimento do tanque se c % 10 == 0
		
		loadn r1, #9 	; Variavel para verificar se o contador de loops eh multiplo de 10
		mod r1, r0, r1 	; c % 10
		cz MoveTanque2	; Chama rotina de movimento do tanque se c % 10 == 0
		
		loadn r1, #2  	; Variavel para verificar se o contador de loops eh multiplo de 2
		mod r1, r0, r1 	; c % 2
		cz AtualizaTiro1	; Chama rotina de movimento do Tiro se c % 2 == 0
		
		loadn r1, #3  	; Variavel para verificar se o contador de loops eh multiplo de 2
		mod r1, r0, r1 	; c % 2
		cz AtualizaTiro2	; Chama rotina de movimento do Tiro se c % 2 == 0

		call Delay
		inc r0 	;c++
		jmp Loop
	
	
	halt


;========================================================;
;						FUNÇÕES TANQUE 1
;========================================================;

;========================================================;
;						SPAWN TANQUE 1
SpawnTanque1:
	; Empilha registradores para nao perder seus valores
push r0
	push r1
	push r2
	push r3
	push r4

	; Posicao inicial do tanque 1 com relacao aos tijolos = 1080
	loadn r0, #1080
	store posTanque1, r0
	store posTanque1Ant, r0
	
	; Posicao inicial do tanque 1 com relacao a tela = 1054
	loadn r0, #1054
	store posTanque1Out, r0
	store posTanque1OutAnt, r0
	
	; Direcao inicial de todos os tanque 1 = UP = 0

	; Direção inicial do tanque 1
	loadn r0, #0
	store dirTanque1, r0
	store dirTanque1Ant, r0

	; Direcao inicial do tiro do jogador1 = NULL = 1
	loadn r0, #1
	store dirTiro1, r0

	call AtualizaTanque1

	; Desempilha registradores para nao perder seus valores
	pop r0
	pop r1
	pop r2
	pop r3
	pop r4

	rts

;========================================================;
;						MOVE TANQUE
MoveTanque1:
	; Empilha registradores para proteger seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	
	; r0 = posicao atual do tanque na tela
	loadn r0, #posTanque1Out
	loadi r0, r0
	; Atualiza a posicao anterior
	store posTanque1OutAnt, r0
	; r1 = posicao atual do tanque nos tijolos
	loadn r1, #posTanque1
	loadi r1, r1
	; Atualiza a posicao anterior
	store posTanque1Ant, r1
	; r2 = direcao do tanque
	loadn r2, #dirTanque1
	loadi r2, r2
	; Atualiza a direcao anterior
	store dirTanque1Ant, r2
	
	; Pega o input do jogador
	inchar r3
	
	; Atualiza a posicao em r0 dependendo do input do usuário
	loadn r4, #'w'
	cmp r3, r4
	jeq UP_tanque1 ; Move UP
	
	loadn r4, #'d'
	cmp r3, r4
	jeq RIGHT_tanque1 ; Move RIGHT
	
	loadn r4, #'s'
	cmp r3, r4
	jeq DOWN_tanque1 ; Move DOWN
	
	loadn r4, #'a'
	cmp r3, r4
	jeq LEFT_tanque1 ; Move LEFT
	
	loadn r4, #' '
	cmp r3, r4
	jeq TIRO1 ; ATIRA

; Continuacao da rotina de movimento igual para todas as possibilidades
continuaTanque1:
	; r1 = posicao atual do tanque na tela
	loadn r1, #posTanque1Out
	loadi r1, r1
	; r2 = posicao anterior do tanque na tela
	loadn r2, #posTanque1OutAnt
	loadi r2, r2
	
	cmp r1, r2 			; compara as posicoes do tanque na tela, atual e anterior
	cne AtualizaTanque1 	; se forem diferentes atualiza o tanque na tela
	jne fim_moveTanque1 	; se ja atualizou o tanque acaba o movimento
	
	; SE A POSICAO NAO MUDOU TEM QUE VERIFICAR A DIRECAO TAMBEM !!!
	
	; r1 = direcao atual do tanque
	loadn r1, #dirTanque1
	loadi r1, r1
	; r2 = direcao anterior do tanque 
	loadn r2, #dirTanque1Ant
	loadi r2, r2
	
	cmp r1, r2 			; compara as direcoes do tanque, atual e anterior
	cne AtualizaTanque1 	; se forem diferentes atualiza o tanque na tela

fim_moveTanque1:
	; Desempilha os registradores
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0

	rts
UP_tanque1: ; Input = 'w'
	; Atualiza a direcao
	loadn r3, #0
	store dirTanque1, r3 ; dirTanque = UP = 0
	
	; -- ATUALIZA POSICAO ATUAL EM r1 --
	loadn r3, #86 		; r3 = auxiliar para verificar se chegou na primeira linha
	loadn r4, #41 		; r4 = auxiliar para subir linha no mapa de tijolos (40 + 1 por causa do '\0')
	; r1 JA TEM A POSICAO DO TANQUE COM RELACAO AOS TIJOLOS !!!
	sub r1, r1, r4 		; pos = pos - 41 ---> sobe uma linha no mapa de tijolos (40 + 1 por causa do '\0')
	cmp r1, r3 			; Verifica se ja esta na primeira linha
	jle continuaTanque1 	; Se ja estiver na primeira linha nao movimeta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r3, #'#' 				; r3 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r1 				; r5 = r5 + posTanque ---> ponteiro para o caractere do mapa de tijolos na posicao que o tanque quer ir
	loadi r4, r5 				; r4 = caractere do mapa de tijolos na posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere na posicao que o tanque quer ir com um tijolo
	jeq continuaTanque1 			; Se for um tijolo o movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O tanque tem dimensoes 2x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere a direita da posicao que o tanque quer ir 
	jeq continuaTanque1 			; Se for um tijolo o movimento nao eh realizado
	
	; -- PASSOU TODOS OS TESTES --
	; r1 ja tem a posicao correta entao atualiza posTanque
	store posTanque1, r1 	; Guarda a posicao no mapa de tijolos atualizada
	; -> Atualiza posTanqueOut
	loadn r2, #40 			; r2 = auxiliar para subir uma linha na posicao da tela
	; r0 JA TEM A POSICAO DO TANQUE NA TELA !!!
	sub r0, r0, r2 			; r0 = r0 - 40 ---> sobe uma linha na tela
	store posTanque1Out, r0	; Guarda a posicao na tela atualizada
	
	jmp continuaTanque1
RIGHT_tanque1: ; Input = 'd'
	; Atualiza a direcao
	loadn r3, #4
	store dirTanque1, r3 ; dirTanque = RIGHT = 4
	
	; -- ATUALIZA POSICAO ATUAL EM r1 --
	loadn r3, #34 				; r3 = auxiliar para verificar se esta na ultima coluna
	loadn r4, #41 				; r4 = auxiliar para fazer mod (40 + 1 por causa do '\0')
	; r1 JA TEM A POSICAO DO TANQUE COM RELACAO AOS TIJOLOS !!!
	inc r1 						; r1++ ---> Posicao vai um pra direita
	mod r4, r1, r4 				; r4 = pos % 41 ---> r4 = coluna
	cmp r4, r3 					; Verifica se ja esta na ultima coluna (coluna 34 por causa da margem)
	jgr continuaTanque1 			; Se ja estiver na ultima coluna nao movimeta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r3, #'#'				; r3 = '#'  ---> auxiliar para comparar o caractere a direita da nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r1 				; r5 = r5 + posTanque ---> ponteiro para o caractere do mapa de tijolos na posicao que o tanque quer ir
	inc r5 						; r5++ ---> r5 vai um pra direita porque o tanque eh (2x2)
	loadi r4, r5 				; r4 = caractere do mapa de tijolos apontado por r5
	cmp r3, r4 					; Compara o caractere na posicao a direita que o tanque quer ir com um tijolo
	jeq continuaTanque1 			; Se for um tijolo movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE ABAIXO!!! (O tanque tem dimensoes 2x2)
	loadn r4, #41 				; r4 = auxiliar para descer linha no mapa de tijolos (40 + 1 por causa do '\0')
	add r5, r5, r4				; r5 = r5 + 41 ---> ponteiro para caractere desce uma linha
	loadi r4, r5 				; r4 = caractere abaixo da posicao a direita que o tanque quer ir
	cmp r3, r4 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 
	jeq continuaTanque1 			; Se for um tijolo o movimento nao eh realizado
	
	; -- PASSOU TODOS OS TESTES --
	; r1 ja tem a posicao correta entao atualiza posTanque
	store posTanque1, r1 ; Guarda a posicao no mapa de tijolos atualizada
	; -> Atualiza posTanqueOut
	; r0 JA TEM A POSICAO DO TANQUE NA TELA !!!
	inc r0 ; r0++ ---> vai um para a direita
	store posTanque1Out, r0 ; Guarda a posicao na tela atualizada
	
	jmp continuaTanque1
DOWN_tanque1: ; Input = 's'
	; Atualiza a direcao
	loadn r3, #8
	store dirTanque1, r3 ; dirTanque = DOWN = 8
	
	; -- ATUALIZA POSICAO ATUAL EM r1 --
	loadn r3, #1101		; r3 = auxiliar para verificar se chegou na ultima linha
	loadn r4, #41 		; r4 = auxiliar para descer linha no mapa de tijolos (40 + 1 por causa do '\0')
	; r1 JA TEM A POSICAO DO TANQUE COM RELACAO AOS TIJOLOS !!!
	add r1, r1, r4 		; pos = pos + 41 ---> desce uma linha no mapa de tijolos (40 + 1 por causa do '\0')
	cmp r1, r3 			; Verifica se ja esta na ultima linha
	jgr continuaTanque1 	; Se ja estiver na ultima linha nao movimeta
	
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r3, #'#' 				; r3 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r1 				; r5 = r5 + posTanque ---> ponteiro para o caractere do mapa de tijolos na posicao que o tanque quer ir
	add r5, r5, r4  			; r5 += 41 ---> r5 vai mais um pra baixo porque o tanque eh (2x2)
	loadi r4, r5 				; r4 = caractere do mapa de tijolos na posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere na posicao abaixo que o tanque quer ir com um tijolo
	jeq continuaTanque1 			; Se for um tijolo o movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O tanque tem dimensoes 2x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 
	jeq continuaTanque1			; Se for um tijolo o movimento nao eh realizado
	
	; -- PASSOU TODOS OS TESTES --
	; r1 ja tem a posicao correta entao atualiza posTanque
	store posTanque1, r1 	; Guarda a posicao no mapa de tijolos atualizada
	; -> Atualiza posTanqueOut
	loadn r2, #40 			; r2 = auxiliar para descer uma linha na posicao da tela
	; r0 JA TEM A POSICAO DO TANQUE NA TELA !!!
	add r0, r0, r2 			; r0 = r0 + 40 ---> desce uma linha na tela
	store posTanque1Out, r0	; Guarda a posicao na tela atualizada
	
	jmp continuaTanque1
LEFT_tanque1: ; Input = 'a'
	; Atualiza a direcao
	loadn r3, #12
	store dirTanque1, r3 ; dirTanque = LEFT = 12
	
	; -- ATUALIZA POSICAO ATUAL EM r1 --
	loadn r3, #4 				; r3 = auxiliar para verificar se esta na primeira coluna
	loadn r4, #41 				; r4 = auxiliar para fazer mod (40 + 1 por causa do '\0')
	; r1 JA TEM A POSICAO DO TANQUE COM RELACAO AOS TIJOLOS !!!
	dec r1 						; r1-- ---> Posicao vai um pra esquerda
	mod r4, r1, r4 				; r4 = pos % 41 ---> r4 = coluna
	cmp r4, r3 					; Verifica se ja esta na primeira coluna (coluna 4 por causa da margem)
	jle continuaTanque1 			; Se ja estiver na primeira coluna nao movimeta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r3, #'#'				; r3 = '#'  ---> auxiliar para comparar o caractere a direita da nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r1 				; r5 = r5 + posTanque ---> ponteiro para o caractere do mapa de tijolos na posicao que o tanque quer ir
	loadi r4, r5 				; r4 = caractere do mapa de tijolos apontado por r5
	cmp r3, r4 					; Compara o caractere na posicao que o tanque quer ir com um tijolo
	jeq continuaTanque1 			; Se for um tijolo movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE ABAIXO!!! (O tanque tem dimensoes 2x2)
	loadn r4, #41 				; r4 = auxiliar para descer linha no mapa de tijolos (40 + 1 por causa do '\0')
	add r5, r5, r4				; r5 = r5 + 41 ---> ponteiro para caractere desce uma linha
	loadi r4, r5 				; r4 = caractere abaixo da posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere abaixo da posicao que o tanque quer ir 
	jeq continuaTanque1 			; Se for um tijolo o movimento nao eh realizado
	
	; -- PASSOU TODOS OS TESTES --
	; r1 ja tem a posicao correta entao atualiza posTanque
	store posTanque1, r1 ; Guarda a posicao no mapa de tijolos atualizada
	; -> Atualiza posTanqueOut
	; r0 JA TEM A POSICAO DO TANQUE NA TELA !!!
	dec r0 ; r0-- ---> vai um para a esquerda
	store posTanque1Out, r0 ; Guarda a posicao na tela atualizada
	
	jmp continuaTanque1	
TIRO1:
	; -- VERIFICACAO SE JA EXISTE UM TIRO --
	; r0 = direcao do tiro
	loadn r0, #dirTiro1
	loadi r0, r0
	loadn r1, #1 		; r1 = 1 ---> auxiliar para ver se existe tiro na tela
	cmp r0, r1			; Compara a direcao do tiro com 1
	jne continuaTanque1	; Se a direcao do tiro for diferente de 1, nao atira (ja existe um tiro)
	
	; -> Atualiza a posicao do tiro na tela
	; r0 = posicao do tanque na tela
	loadn r0, #posTanque1Out
	loadi r0, r0
	store posTiro1Out, r0 ; posTiroOut = posTanqueOut
	
	; -> Atualiza a posicao do tiro nos tijolos
	; r1 = posicao atual do tanque nos tijolos
	loadn r1, #posTanque1
	loadi r1, r1
	store posTiro1, r1 ; posTiro = posTanque
	
	; -> Atualiza a direcao do tiro
	; r2 = direcao do tanque na tela
	loadn r2, #dirTanque1
	loadi r2, r2
	store dirTiro1, r2 ; dirTiro = dirTanque
	
	jmp continuaTanque1
;		     		  FIM MOVE TANQUE
;========================================================;

;========================================================;
;						APAGA TANQUE
ApagaTanque1:
	; Empilha registradores para nao perder seus valores
	push r0
	push r1
	push r2
	
	; r0 recebe a posicao anterior do tanque na tela
	loadn r0, #posTanque1OutAnt
	loadi r0, r0
	; r1 recebe ' ' para apagar o tanque
	loadn r1, #' '
	; r2 recebe 39 para ir para a proxima linha de impressao
	loadn r2, #39
	
	; Apaga os quatro caracteres do tanque
	outchar r1, r0 	; Apaga o primeiro caractere
	inc r0 			; Vai para o caractere a direita
	outchar r1, r0 	; Apaga o segundo caractere
	add r0, r0, r2 	; Vai para a proxima linha
	outchar r1, r0	; Apaga o terceiro caractere
	inc r0 			; Vai para o caractere a direita
	outchar r1, r0	; Apaga o quarto caractere
	
	; Desempilha registradores
	pop r2
	pop r1
	pop r0
	rts	
;					 FIM APAGA TANQUE
;========================================================;

;========================================================;
;					  ATUALIZA TANQUE
AtualizaTanque1:
	; Empilha registradores para nao perder seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	
	; Antes de atualizar o tanque apaga o tanque na posicao anterior
	call ApagaTanque1
	
	; -- DETERMINANDO OS CARACTERES QUE SERAO USADOS --
	loadn r1, #tanqueChars ; r1 = ponteiro para os caracteres do tanque
	; r2 = direcao do tanque
	loadn r2, #dirTanque1
	loadi r2, r2
	add r1, r1, r2 ; r1 = tanqueChars + dirTanque ---> ponteiro na posicao do primeiro caractere da direcao certa
	
	; -- IMPRESSAO DOS CARACTERES --
	; r0 = posicao do tanque na tela
	loadn r0, #posTanque1Out
	loadi r0, r0
	loadn r4, #2816 ; cor amarela
	
	; -> Primeiro caractere
	loadi r3, r1 	; r3 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r3, r3, r4 	; Adiciona a cor
	outchar r3, r0	; Imprime o primeiro caractere
	
	; -> Segundo caractere
	inc r0 			; r0++ ---> posicao de impressao vai para a direita
	inc r1 			; r1++ ---> r1 aponta para o proximo caractere no vetor de caracteres
	loadi r3, r1 	; r3 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r3, r3, r4 	; Adiciona a cor
	outchar r3, r0	; Imprime o segundo caractere
	
	; -> Terceiro caractere
	loadn r2, #39 	; r2 = auxiliar para descer de linha (40 - 1 porque ja esta no caractere a direita da posicao do tanque)
	add r0, r0, r2 	; r0 += 39 ---> posicao de impressao vai para a proxima linha
	inc r1 			; r1++ ---> r1 aponta para o proximo caractere no vetor de caracteres
	loadi r3, r1 	; r3 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r3, r3, r4 	; Adiciona a cor
	outchar r3, r0	; Imprime o Terceiro caractere
	
	; -> Quarto caractere
	inc r0 			; r0++ ---> posicao de impressao vai para a direita
	inc r1 			; r1++ ---> r1 aponta para o caractere no vetor de caracteres
	loadi r3, r1 	; r3 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r3, r3, r4 	; Adiciona a cor
	outchar r3, r0	; Imprime o quarto caractere
	
	; Desempilha registradores
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;					 FIM ATUALIZA TANQUE
;========================================================;

;========================================================;
;					  ATUALIZA TIRO
AtualizaTiro1:
	push r0
	push r1
	push r2
	push r3
	
	; -- VERIFICA SE O TIRO EXISTE --
	; r0 = direcao do tiro
	loadn r0, #dirTiro1
	loadi r0, r0
	loadn r1, #1 			; r1 = auxiliar para ver se o tiro existe
	cmp r0, r1				; Compara a direcao do tiro com 1
	jeq fim_atualizaTiro1	; Se for 1 o tiro nao existe
	
	; -- APAGA TIRO ANTERIOR --
	; Chama funcao que apaga o tiro na posicao anterior
	call ApagaTiro1
	
	; -- ATUALIZA POSICAO E DIRECAO DO TIRO --
	; Chama funcao que atualiza a posicao e direicao do tiro
	call MoveTiro1
	
	; -- VERIFICA SE O TIRO DEVE SER IMPRESSO --
	; r0 = direcao do tiro
	loadn r0, #dirTiro1
	loadi r0, r0
	loadn r1, #1 			; r1 = auxiliar para ver se o tiro deve ser impresso
	cmp r0, r1				; Compara a direcao do tiro com 1
	jeq fim_atualizaTiro1	; Se for 1 o tiro nao deve ser impresso
	
	; -- IMPRESSAO DO TIRO --
	; r1 = posicao do tiro na tela
	loadn r1, #posTiro1Out
	loadi r1, r1
	; -> Verificacao do sentido do tiro
	loadn r2, #8				; Auxiliar para verificar o sentido do tiro
	mod r2, r0, r2 				; r2 = dirTiro % 8
	jz atualizaTiro1Horizontal	; Se dirTiro eh multiplo de 8 (UP ou DOWN) imprime o tiro no sentido horizontal
	
	; -> Impressao do tiro na vertical
	loadn r2, #tiroChars	; r2 = ponteiro para os caracteres do tiro
	add r2, r2, r0 			; r2 += dirTiro ---> aponta para o primeiro caractere da direcao certa
	loadi r0, r2 			; r0 recebe o caractere apontado pelo ponteiro de caracteres (r2)
	outchar r0, r1			; Imprime o primeiro caractere
	loadn r3, #40			; r3 = auxiliar para descer linha
	add r1, r1, r3			; r1 += 40 ---> desce uma linha na posicao de impressao
	inc r2 					; r0++ ---> r0 aponta para o proximo caractere no vetor de caracteres
	loadi r0, r2 			; r0 recebe o caractere apontado pelo ponteiro de caracteres (r2)
	outchar r0, r1			; Imprime o segundo caractere
	jmp fim_atualizaTiro1
	
	; -> Impressao do tiro na horizontal
atualizaTiro1Horizontal:
	loadn r2, #tiroChars	; r2 = ponteiro para os caracteres do tiro
	add r2, r2, r0 			; r2 += dirTiro ---> aponta para o primeiro caractere da direcao certa
	loadi r0, r2 			; r0 recebe o caractere apontado pelo ponteiro de caracteres (r2)
	outchar r0, r1			; Imprime o primeiro caractere
	inc r1					; r1 ++ ---> vai para a direita na posicao de impressao
	inc r2 					; r0++ ---> r0 aponta para o proximo caractere no vetor de caracteres
	loadi r0, r2 			; r0 recebe o caractere apontado pelo ponteiro de caracteres (r2)
	outchar r0, r1			; Imprime o segundo caractere
	
fim_atualizaTiro1:
	; desempilha registradores
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;					 FIM ATUALIZA TIRO
;========================================================;

;========================================================;
;						APAGA TIRO
ApagaTiro1:
	push r0
	push r1
	push r2
	; r0 = posicao do tanque
	loadn r0, #posTanque1Out
	loadi r0, r0
	; r1 = posicao do tiro
	loadn r1, #posTiro1Out
	loadi r1, r1
	cmp r0, r1 			; Compara a posicao do tiro e do tanque na tela
	jeq fim_apagaTiro1	; Se forem iguais nao apaga (para nao apagar o tanque)
	
	; -- APAGA O TIRO --
	; r0 = direcao do tiro
	loadn r0, #dirTiro1
	loadi r0, r0
	; -> Verificacao do sentido do tiro
	loadn r2, #8				; Auxiliar para verificar o sentido do tiro
	mod r2, r0, r2 				; r2 = dirTiro % 8
	jz apagaTiro1Horizontal	; Se dirTiro eh multiplo de 8 (UP ou DOWN) imprime o tiro no sentido horizontal
	
	; -> Apaga tiro na vertical
	; r1 JA TEM A POSICAO DO TIRO NA TELA
	loadn r0, #' ' 		; r0 = ' ' para apagar o tiro
	outchar r0, r1 		; Apaga o primeiro caractere
	loadn r2, #40		; r2 = auxiliar para descer a linha
	add r1, r1, r2 		; r1 += 40 ---> posicao de impressao desce uma linha
	outchar r0, r1		; Apaga o segundo caractere
	jmp fim_apagaTiro1
	
	; -> Apaga tiro na vertical
apagaTiro1Horizontal:
	; r1 JA TEM A POSICAO DO TIRO NA TELA
	loadn r0, #' ' 		; r0 = ' ' para apagar o tiro
	outchar r0, r1 		; Apaga o primeiro caractere
	inc r1				; r1++ ---> posicao de impressao vai para a direita
	outchar r0, r1		; Apaga o segundo caractere
	
fim_apagaTiro1:
	; desempilha registradores
	pop r2
	pop r1
	pop r0
	rts
;					  FIM APAGA TIRO
;========================================================;

;========================================================;
;						MOVE TIRO
MoveTiro1:
	; Empilha registradores para preservar seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	
	; r0 recebe a posicao do tanque na tela
	loadn r0, #posTiro1
	loadi r0, r0
	; r1 recebe a posicao do tiro na tela
	loadn r1, #posTiro1Out
	loadi r1, r1
	; r1 recebe a posicao do tiro na tela
	loadn r2, #dirTiro1
	loadi r2, r2
	
	; -- VERIFICA A DIRECAO DO TIRO PARA DETERMINAR O MOVIMENTO --
	loadn r3, #0
	cmp r2, r3
	jeq UP_tiro1
	
	loadn r3, #4
	cmp r2, r3
	jeq RIGHT_tiro1
	
	loadn r3, #8
	cmp r2, r3
	jeq DOWN_tiro1
	
	loadn r3, #12
	cmp r2, r3
	jeq LEFT_tiro1
	
fimTiro1:
	; -> Rotina para acabar com o tiro
	loadn r2, #1		; r2 = auxiliar para definir a direcao do tiro como NULL
	store dirTiro1, r2 	; Guarda NULL (1) na direcao do tiro para indicar que ele acabou
continuaTiro1:
	; Desempilha registradores
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
UP_tiro1: ; dirTiro = UP = 0
	; -- ATUALIZA A POSICAO DO TIRO  --
	; r0 JA TEM A POSICAO DO TIRO COM RELACAO AOS TIJOLOS
	loadn r2, #41 			; r2 = auxiliar para descer linha (40 + 1 por causa do '\0')
	sub r0, r0, r2 			; pos = pos - 41 ---> sobe uma linha (40 + 1 por causa do '\0')
	store posTiro1, r0 		; Guarda a posicao do tiro com relacao aos tijolos atualizada
	; r1 JA TEM A POSICAO DO TIRO COM RELACAO A TELA
	loadn r2, #40 			; r2 = auxiliar para descer linha
	sub r1, r1, r2 			; pos = pos - 40 ---> sobe uma linha
	store posTiro1Out, r1 		; Guarda a posicao do tiro na tela atualizada
	
	loadn r3, #86 			; r3 = auxiliar para verificar se chegou na menor posicao permitida
	cmp r0, r3 				; Verifica se ja esta na primeira linha
	jle fimTiro1 			; Se ja estiver na primeira linha acabou o tiro
	
	; -- VERIFICACAO SE A NOVA POSICAO EH UM TIJOLO --
	loadn r3, #'#' 				; r3 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r0 				; r5 = r5 + posTiro ---> ponteiro para o caractere do mapa de tijolos na nova posicao do tiro
	loadi r4, r5 				; r4 = caractere do mapa de tijolos na nova posicao do tiro
	cmp r3, r4 					; Compara o caractere na nova posicao do tiro com um tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo1 			; r1 ja tem posTiroOut e r5 ja tem a posTiro

	
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA!!! (O tiro tem dimensoes 1x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	inc r1						; Posicao na tela vai um para a direita
	loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 	ceq apaga_Tijolo 	; quebra o tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo1 			; r1 ja tem posTiroOut + 1 e r5 ja tem a posTiro + 1

	; -- VERIFICACAO SE A NOVA POSICAO EH O ADVERSÁRIO --
	dec r1
	loadn r5, #posTiro1Out
	loadi r5, r5
	loadn r3, #posTanque2Out
	loadi r3, r3

	cmp r5, r3
	ceq kill_1

	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA!!! (O tiro tem dimensoes 1x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	inc r1						; Posicao na tela vai um para a direita
	;loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r5 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 	ceq apaga_Tijolo 	; quebra o tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq kill_1 			; r1 ja tem posTiroOut + 1 e r5 ja tem a posTiro + 1
	
	; -- VERIFICA SE O TIRO ATINGIU UM TIJOLO OU ADVERSARIO --
	loadn r3, #' '		; r3  = auxiliar para verificar se o tiro atingiu um tijolo
	cmp r2, r3			; Compara r2 com ' '
	jeq fimTiro1			; Se r2 == ' ' quer dizer que atingiu um tijolo => acaba o tiro
	
	jmp continuaTiro1	
RIGHT_tiro1: ; dirTiro = RIGHT = 4
; OBSERVACAO: O tiro comeca na mesma posicao que o tanque, como o tanque eh 2x2
; na primeira movimentacao do tiro para a direita ele precisa se movimentar duas vezes
; para nao ocupar os caracteres direitos do tanque

	; -- ATUALIZA A POSICAO DO TIRO  --
	; r0 JA TEM A POSICAO DO TIRO COM RELACAO AOS TIJOLOS
	; r1 JA TEM A POSICAO DO TIRO NA TELA
	; r3 = posicao do tanque na tela
	loadn r3, #posTanque1Out
	loadi r3, r3
	cmp r3, r1				; Compara a posicao do tanque e do tiro na tela
	jne naoIncrementaRight1	; Se forem diferentes nao incrementa duas vezes (veja a observacao acima)
	
	; -> Movimento para direita
	inc r0 ; posTiro++ ---> vai um pra direita 
	inc r1 ; posTiroOut++ ---> vai pra direita
naoIncrementaRight1:
	; -> Movimento para direita
	inc r0 ; posTiro++ ---> vai um pra direita 
	inc r1 ; posTiroOut++ ---> vai pra direita
	
	store posTiro1, r0 		; Guarda a posicao do tiro com relacao aos tijolos atualizada
	store posTiro1Out, r1	; Guarda a posicao do tiro na tela atualizada
	
	loadn r2, #35 			; r2 = auxiliar para verificar se esta na ultima coluna
	loadn r3, #40			; r3 = auxiliar para fazer mod
	mod r3, r1, r3			; r3 = posTiroOut % 40 ---> r3 = coluna
	cmp r3, r2 				; Verifica se ja esta na ultima coluna (coluna 35 por causa da margem)
	jgr fimTiro1			; Se ja estiver na ultima coluna acabou o tiro
	
	; -- VERIFICACAO SE A NOVA POSICAO EH UM TIJOLO --
	loadn r3, #'#' 				; r3 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r0 				; r5 = r5 + posTiro ---> ponteiro para o caractere do mapa de tijolos na nova posicao do tiro
	loadi r4, r5 				; r4 = caractere do mapa de tijolos na nova posicao do tiro
	cmp r3, r4 					; Compara o caractere na nova posicao do tiro com um tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo1 			; r1 ja tem posTiroOut e r5 ja tem a posTiro
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE ABAIXO!!! (O tiro tem dimensoes 2x1)
	loadn r4, #41				; r4 = auxiliar para descer uma linha no mapa de tijolos
	add r5, r5, r4				; r5 += 41 ---> ponteiro do caractere desce uma linha (40 + 1 por causa do '\0')
	dec r4						; r4 = 40 ---> auxiliar para descer uma linha na tela
	add r1, r1, r4				; r1 += 40 ---> posicao na tela desce uma linha
	loadi r4, r5 				; r4 = caractere abaixo da nova posicao do tiro
	cmp r3, r4 					; Compara o caractere na nova posicao do tiro com um tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo1 			; r1 ja tem posTiroOut e r5 ja tem a posTiro
	
	; -- VERIFICA SE O TIRO ATINGIU UM TIJOLO --
	loadn r3, #' '		; r3  = auxiliar para verificar se o tiro atingiu um tijolo
	cmp r2, r3			; Compara r2 com ' '
	jeq fimTiro1			; Se r2 == ' ' quer dizer que atingiu um tijolo => acaba o tiro

	; -- VERIFICACAO SE A NOVA POSICAO EH O ADVERSÁRIO --

	; -- ACERTOU NO MEIO
	dec r1
	loadn r5, #posTiro1Out
	loadi r5, r5
	loadn r3, #posTanque2Out
	loadi r3, r3
	cmp r5, r3
	ceq kill_1

	; ACERTOU NA PARTE DE CIMA (BUNDINHA) !!! (O tiro tem dimensoes 1x2)
	loadn r4, #41				; r4 = auxiliar para descer uma linha no mapa de tijolos
	add r5, r5, r4				; r5 += 41 ---> ponteiro do caractere desce uma linha (40 + 1 por causa do '\0')
	dec r4						; r4 = 40 ---> auxiliar para descer uma linha na tela
	add r1, r1, r4				; r1 += 40 ---> posicao na tela desce uma linha
	cmp r3, r5 					; Compara o caractere na nova posicao do tiro com o adversário
	ceq kill_1 			; r1 ja tem posTiroOut + 1 e r5 ja tem a posTiro + 1

	jmp continuaTiro1
DOWN_tiro1: ; dirTiro = DOWN = 8
; OBSERVACAO: O tiro comeca na mesma posicao que o tanque, como o tanque eh 2x2
; na primeira movimentacao do tiro para baixo ele precisa descer duas vezes para
; nao ocupar os caracteres inferiores do tanque

	; -- ATUALIZA A POSICAO DO TIRO  --
	loadn r4, #41	; r4 = auxiliar para descer linha (40 + 1 por causa do '\0')
	loadn r2, #40	; r2 = auxiliar para descer linha na tela
	; r0 JA TEM A POSICAO DO TIRO COM RELACAO AOS TIJOLOS
	; r1 JA TEM A POSICAO DO TIRO NA TELA
	; r3 = posicao do tanque na tela
	loadn r3, #posTanque1Out
	loadi r3, r3
	cmp r3, r1				; Compara a posicao do tanque e do tiro na tela
	jne naoIncrementaDown1	; Se forem diferentes nao incrementa duas vezes (veja a observacao acima)

	; -> Movimento para baixo
	add r0, r0, r4 ; posTiro += 41 ---> sobe uma linha (40 + 1 por causa do '\0')
	add r1, r1, r2 ; posTiroOut += 40 ---> sobe uma linha
naoIncrementaDown1:
	; -> Movimento para baixo
	add r0, r0, r4 ; posTiro += 41 ---> sobe uma linha (40 + 1 por causa do '\0')
	add r1, r1, r2 ; posTiroOut += 40 ---> sobe uma linha
	
	store posTiro1, r0 		; Guarda a posicao do tiro com relacao aos tijolos atualizada
	store posTiro1Out, r1	; Guarda a posicao do tiro na tela atualizada
	
	loadn r3, #1142			; r3 = auxiliar para verificar se chegou na maior posicao permitida
	cmp r0, r3 				; Vrifica se ja esta na ultima linha
	jgr fimTiro1			; Se ja estiver na ultima linha acabou o tiro
	
	; -- VERIFICACAO SE A NOVA POSICAO EH UM TIJOLO --
	loadn r3, #'#' 				; r3 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r0 				; r5 = r5 + posTiro ---> ponteiro para o caractere do mapa de tijolos na nova posicao do tiro
	loadi r4, r5 				; r4 = caractere do mapa de tijolos na nova posicao do tiro
	cmp r3, r4 					; Compara o caractere na nova posicao do tiro com um tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo1 			; r1 ja tem posTiroOut e r5 ja tem a posTiro
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA!!! (O tiro tem dimensoes 1x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	inc r1						; Posicao na tela vai um para a direita
	loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 	ceq apaga_Tijolo 	; quebra o tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo1 			; r1 ja tem posTiroOut + 1 e r5 ja tem a posTiro + 1
	
	; -- VERIFICA SE O TIRO ATINGIU UM TIJOLO --
	loadn r3, #' '		; r3  = auxiliar para verificar se o tiro atingiu um tijolo
	cmp r2, r3			; Compara r2 com ' '
	jeq fimTiro1			; Se r2 == ' ' quer dizer que atingiu um tijolo => acaba o tiro

	; -- VERIFICACAO SE A NOVA POSICAO EH O ADVERSÁRIO --
	dec r1
	loadn r5, #posTiro1Out
	loadi r5, r5
	loadn r3, #posTanque2Out
	loadi r3, r3

	cmp r5, r3
	ceq kill_1

	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA!!! (O tiro tem dimensoes 1x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	inc r1						; Posicao na tela vai um para a direita
	;loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r5 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 	ceq apaga_Tijolo 	; quebra o tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq kill_1 			; r1 ja tem posTiroOut + 1 e r5 ja tem a posTiro + 1
	
	jmp continuaTiro1
LEFT_tiro1: ; dirTiro = LEFT = 12
	; -- ATUALIZA A POSICAO DO TIRO  --
	; r0 JA TEM A POSICAO DO TIRO COM RELACAO AOS TIJOLOS
	dec r0 					; posTiro-- ---> vai um para a esquerda
	store posTiro1, r0 		; Guarda a posicao do tiro com relacao aos tijolos atualizada
	; r1 JA TEM A POSICAO DO TIRO COM RELACAO A TELA
	dec r1 					; posTiroOut-- ---> vai um para a esquerda
	store posTiro1Out, r1	; Guarda a posicao do tiro na tela atualizada
	
	loadn r2, #4 			; r2 = auxiliar para verificar se esta na primeira coluna
	loadn r3, #40			; r3 = auxiliar para fazer mod
	mod r3, r1, r3			; r3 = posTiroOut % 40 ---> r3 = coluna
	cmp r3, r2				; Verifica se ja esta na primeira coluna (coluna 4 por causa da margem)
	jle fimTiro1 			; Se ja estiver na primeira coluna acabou o tiro
	
	; -- VERIFICACAO SE A NOVA POSICAO EH UM TIJOLO --
	loadn r3, #'#' 				; r3 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r0 				; r5 = r5 + posTiro ---> ponteiro para o caractere do mapa de tijolos na nova posicao do tiro
	loadi r4, r5 				; r4 = caractere do mapa de tijolos na nova posicao do tiro
	cmp r3, r4 					; Compara o caractere na nova posicao do tiro com um tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo1 			; r1 ja tem posTiroOut e r5 ja tem a posTiro
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE ABAIXO!!! (O tiro tem dimensoes 2x1)
	loadn r4, #41				; r4 = auxiliar para descer uma linha no mapa de tijolos
	add r5, r5, r4				; r5 += 41 ---> ponteiro do caractere desce uma linha (40 + 1 por causa do '\0')
	dec r4						; r4 = 40 ---> auxiliar para descer uma linha na tela
	add r1, r1, r4				; r1 += 40 ---> posicao na tela desce uma linha
	loadi r4, r5 				; r4 = caractere abaixo da nova posicao do tiro
	cmp r3, r4 					; Compara o caractere na nova posicao do tiro com um tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo1 			; r1 ja tem posTiroOut e r5 ja tem a posTiro
	
	; -- VERIFICACAO SE A NOVA POSICAO EH O ADVERSÁRIO --
	dec r1
	loadn r5, #posTiro1Out
	loadi r5, r5
	loadn r3, #posTanque2Out
	loadi r3, r3

	cmp r5, r3
	ceq kill_1

	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA!!! (O tiro tem dimensoes 1x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	inc r1						; Posicao na tela vai um para a direita
	;loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r5 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 	ceq apaga_Tijolo 	; quebra o tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq kill_1 			; r1 ja tem posTiroOut + 1 e r5 ja tem a posTiro + 1
	
	; -- VERIFICA SE O TIRO ATINGIU UM TIJOLO --
	loadn r3, #' '		; r3  = auxiliar para verificar se o tiro atingiu um tijolo
	cmp r2, r3			; Compara r2 com ' '
	jeq fimTiro1			; Se r2 == ' ' quer dizer que atingiu um tijolo => acaba o tiro

	jmp continuaTiro1
	
quebra_Tijolo1:
	; GUARDA ' ' NA POSICAO r5 DA MEMORIA E IMPRIME ' ' NA POSICAO r1 DA TELA
	loadn r2, #' '
	storei r5, r2
	outchar r2, r1
	rts

kill_1:
	; GUARDA ' ' NA POSICAO r5 DA MEMORIA E IMPRIME ' ' NA POSICAO r1 DA TELA
	loadn r2, #' '
	storei r5, r2
	outchar r2, r1

	call ApagaTanque2
	call DelayMaior
	call SpawnTanque2

	rts

;					  FIM MOVE TIRO
;========================================================;

;========================================================;
;					FIM FUNÇÕES TANQUE 1
;========================================================;

;========================================================;
;					FUNÇÕES TANQUE 2
;========================================================;

;========================================================;
;						SPAWN TANQUE 2
SpawnTanque2:
	; Empilha registradores para nao perder seus valores
	push r0
	push r1
	push r2
	push r3
	push r4

	; Posicao inicial do tanque 2 com relacao aos tijolos = 1080
	loadn r0, #106
	store posTanque2, r0
	store posTanque2Ant, r0
	
	; Posicao inicial do tanque inimigo 2 com relacao a tela = 1054
	loadn r0, #104
	store posTanque2Out, r0
	store posTanque2OutAnt, r0
	
	; Direcao inicial do tanque 2 = DOWN = 8

	; Direção inicial do tanque 2
	loadn r0, #8
	store dirTanque2, r0
	store dirTanque2Ant, r0

	; Direcao inicial do tiro do jogador2 = NULL = 1
	loadn r0, #1
	store dirTiro2, r0

	call AtualizaTanque2

	; Desempilha registradores para nao perder seus valores
	pop r0
	pop r1
	pop r2
	pop r3
	pop r4

	rts

;========================================================;
;						MOVE TANQUE
MoveTanque2:
	; Empilha registradores para proteger seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	
	; r0 = posicao atual do tanque na tela
	loadn r0, #posTanque2Out
	loadi r0, r0
	; Atualiza a posicao anterior
	store posTanque2OutAnt, r0
	; r1 = posicao atual do tanque nos tijolos
	loadn r1, #posTanque2
	loadi r1, r1
	; Atualiza a posicao anterior
	store posTanque2Ant, r1
	; r2 = direcao do tanque
	loadn r2, #dirTanque2
	loadi r2, r2
	; Atualiza a direcao anterior
	store dirTanque2Ant, r2
	
	; Pega o input do jogador
	inchar r3
	
	; Atualiza a posicao em r0 dependendo do input do usuário
	loadn r4, #'i'
	cmp r3, r4
	jeq UP_tanque2 ; Move UP
	
	loadn r4, #'l'
	cmp r3, r4
	jeq RIGHT_tanque2 ; Move RIGHT
	
	loadn r4, #'k'
	cmp r3, r4
	jeq DOWN_tanque2 ; Move DOWN
	
	loadn r4, #'j'
	cmp r3, r4
	jeq LEFT_tanque2 ; Move LEFT
	
	loadn r4, #'m'
	cmp r3, r4
	jeq TIRO2 ; ATIRA

; Continuacao da rotina de movimento igual para todas as possibilidades
continuaTanque2:
	; r1 = posicao atual do tanque na tela
	loadn r1, #posTanque2Out
	loadi r1, r1
	; r2 = posicao anterior do tanque na tela
	loadn r2, #posTanque2OutAnt
	loadi r2, r2
	
	cmp r1, r2 			; compara as posicoes do tanque na tela, atual e anterior
	cne AtualizaTanque2 	; se forem diferentes atualiza o tanque na tela
	jne fim_moveTanque2 	; se ja atualizou o tanque acaba o movimento
	
	; SE A POSICAO NAO MUDOU TEM QUE VERIFICAR A DIRECAO TAMBEM !!!
	
	; r1 = direcao atual do tanque
	loadn r1, #dirTanque2
	loadi r1, r1
	; r2 = direcao anterior do tanque 
	loadn r2, #dirTanque2Ant
	loadi r2, r2
	
	cmp r1, r2 			; compara as direcoes do tanque, atual e anterior
	cne AtualizaTanque2 	; se forem diferentes atualiza o tanque na tela

fim_moveTanque2:
	; Desempilha os registradores
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0 
	rts
UP_tanque2: ; Input = 'i'
	; Atualiza a direcao
	loadn r3, #0
	store dirTanque2, r3 ; dirTanque = UP = 0
	
	; -- ATUALIZA POSICAO ATUAL EM r1 --
	loadn r3, #86 		; r3 = auxiliar para verificar se chegou na primeira linha
	loadn r4, #41 		; r4 = auxiliar para subir linha no mapa de tijolos (40 + 1 por causa do '\0')
	; r1 JA TEM A POSICAO DO TANQUE COM RELACAO AOS TIJOLOS !!!
	sub r1, r1, r4 		; pos = pos - 41 ---> sobe uma linha no mapa de tijolos (40 + 1 por causa do '\0')
	cmp r1, r3 			; Verifica se ja esta na primeira linha
	jle continuaTanque2 	; Se ja estiver na primeira linha nao movimeta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r3, #'#' 				; r3 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r1 				; r5 = r5 + posTanque ---> ponteiro para o caractere do mapa de tijolos na posicao que o tanque quer ir
	loadi r4, r5 				; r4 = caractere do mapa de tijolos na posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere na posicao que o tanque quer ir com um tijolo
	jeq continuaTanque2 			; Se for um tijolo o movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O tanque tem dimensoes 2x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere a direita da posicao que o tanque quer ir 
	jeq continuaTanque2 			; Se for um tijolo o movimento nao eh realizado
	
	; -- PASSOU TODOS OS TESTES --
	; r1 ja tem a posicao correta entao atualiza posTanque
	store posTanque2, r1 	; Guarda a posicao no mapa de tijolos atualizada
	; -> Atualiza posTanqueOut
	loadn r2, #40 			; r2 = auxiliar para subir uma linha na posicao da tela
	; r0 JA TEM A POSICAO DO TANQUE NA TELA !!!
	sub r0, r0, r2 			; r0 = r0 - 40 ---> sobe uma linha na tela
	store posTanque2Out, r0	; Guarda a posicao na tela atualizada
	
	jmp continuaTanque2
RIGHT_tanque2: ; Input = 'd'
	; Atualiza a direcao
	loadn r3, #4
	store dirTanque2, r3 ; dirTanque = RIGHT = 4
	
	; -- ATUALIZA POSICAO ATUAL EM r1 --
	loadn r3, #34 				; r3 = auxiliar para verificar se esta na ultima coluna
	loadn r4, #41 				; r4 = auxiliar para fazer mod (40 + 1 por causa do '\0')
	; r1 JA TEM A POSICAO DO TANQUE COM RELACAO AOS TIJOLOS !!!
	inc r1 						; r1++ ---> Posicao vai um pra direita
	mod r4, r1, r4 				; r4 = pos % 41 ---> r4 = coluna
	cmp r4, r3 					; Verifica se ja esta na ultima coluna (coluna 34 por causa da margem)
	jgr continuaTanque2 			; Se ja estiver na ultima coluna nao movimeta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r3, #'#'				; r3 = '#'  ---> auxiliar para comparar o caractere a direita da nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r1 				; r5 = r5 + posTanque ---> ponteiro para o caractere do mapa de tijolos na posicao que o tanque quer ir
	inc r5 						; r5++ ---> r5 vai um pra direita porque o tanque eh (2x2)
	loadi r4, r5 				; r4 = caractere do mapa de tijolos apontado por r5
	cmp r3, r4 					; Compara o caractere na posicao a direita que o tanque quer ir com um tijolo
	jeq continuaTanque2 			; Se for um tijolo movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE ABAIXO!!! (O tanque tem dimensoes 2x2)
	loadn r4, #41 				; r4 = auxiliar para descer linha no mapa de tijolos (40 + 1 por causa do '\0')
	add r5, r5, r4				; r5 = r5 + 41 ---> ponteiro para caractere desce uma linha
	loadi r4, r5 				; r4 = caractere abaixo da posicao a direita que o tanque quer ir
	cmp r3, r4 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 
	jeq continuaTanque2 			; Se for um tijolo o movimento nao eh realizado
	
	; -- PASSOU TODOS OS TESTES --
	; r1 ja tem a posicao correta entao atualiza posTanque
	store posTanque2, r1 ; Guarda a posicao no mapa de tijolos atualizada
	; -> Atualiza posTanqueOut
	; r0 JA TEM A POSICAO DO TANQUE NA TELA !!!
	inc r0 ; r0++ ---> vai um para a direita
	store posTanque2Out, r0 ; Guarda a posicao na tela atualizada
	
	jmp continuaTanque2
DOWN_tanque2: ; Input = 'k'
	; Atualiza a direcao
	loadn r3, #8
	store dirTanque2, r3 ; dirTanque = DOWN = 8
	
	; -- ATUALIZA POSICAO ATUAL EM r1 --
	loadn r3, #1101		; r3 = auxiliar para verificar se chegou na ultima linha
	loadn r4, #41 		; r4 = auxiliar para descer linha no mapa de tijolos (40 + 1 por causa do '\0')
	; r1 JA TEM A POSICAO DO TANQUE COM RELACAO AOS TIJOLOS !!!
	add r1, r1, r4 		; pos = pos + 41 ---> desce uma linha no mapa de tijolos (40 + 1 por causa do '\0')
	cmp r1, r3 			; Verifica se ja esta na ultima linha
	jgr continuaTanque2 	; Se ja estiver na ultima linha nao movimeta
	
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r3, #'#' 				; r3 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r1 				; r5 = r5 + posTanque ---> ponteiro para o caractere do mapa de tijolos na posicao que o tanque quer ir
	add r5, r5, r4  			; r5 += 41 ---> r5 vai mais um pra baixo porque o tanque eh (2x2)
	loadi r4, r5 				; r4 = caractere do mapa de tijolos na posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere na posicao abaixo que o tanque quer ir com um tijolo
	jeq continuaTanque2 			; Se for um tijolo o movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O tanque tem dimensoes 2x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 
	jeq continuaTanque2			; Se for um tijolo o movimento nao eh realizado
	
	; -- PASSOU TODOS OS TESTES --
	; r1 ja tem a posicao correta entao atualiza posTanque
	store posTanque2, r1 	; Guarda a posicao no mapa de tijolos atualizada
	; -> Atualiza posTanqueOut
	loadn r2, #40 			; r2 = auxiliar para descer uma linha na posicao da tela
	; r0 JA TEM A POSICAO DO TANQUE NA TELA !!!
	add r0, r0, r2 			; r0 = r0 + 40 ---> desce uma linha na tela
	store posTanque2Out, r0	; Guarda a posicao na tela atualizada
	
	jmp continuaTanque2
LEFT_tanque2: ; Input = 'j'
	; Atualiza a direcao
	loadn r3, #12
	store dirTanque2, r3 ; dirTanque = LEFT = 12
	
	; -- ATUALIZA POSICAO ATUAL EM r1 --
	loadn r3, #4 				; r3 = auxiliar para verificar se esta na primeira coluna
	loadn r4, #41 				; r4 = auxiliar para fazer mod (40 + 1 por causa do '\0')
	; r1 JA TEM A POSICAO DO TANQUE COM RELACAO AOS TIJOLOS !!!
	dec r1 						; r1-- ---> Posicao vai um pra esquerda
	mod r4, r1, r4 				; r4 = pos % 41 ---> r4 = coluna
	cmp r4, r3 					; Verifica se ja esta na primeira coluna (coluna 4 por causa da margem)
	jle continuaTanque2 			; Se ja estiver na primeira coluna nao movimeta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r3, #'#'				; r3 = '#'  ---> auxiliar para comparar o caractere a direita da nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r1 				; r5 = r5 + posTanque ---> ponteiro para o caractere do mapa de tijolos na posicao que o tanque quer ir
	loadi r4, r5 				; r4 = caractere do mapa de tijolos apontado por r5
	cmp r3, r4 					; Compara o caractere na posicao que o tanque quer ir com um tijolo
	jeq continuaTanque2 			; Se for um tijolo movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE ABAIXO!!! (O tanque tem dimensoes 2x2)
	loadn r4, #41 				; r4 = auxiliar para descer linha no mapa de tijolos (40 + 1 por causa do '\0')
	add r5, r5, r4				; r5 = r5 + 41 ---> ponteiro para caractere desce uma linha
	loadi r4, r5 				; r4 = caractere abaixo da posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere abaixo da posicao que o tanque quer ir 
	jeq continuaTanque2 			; Se for um tijolo o movimento nao eh realizado
	
	; -- PASSOU TODOS OS TESTES --
	; r1 ja tem a posicao correta entao atualiza posTanque
	store posTanque2, r1 ; Guarda a posicao no mapa de tijolos atualizada
	; -> Atualiza posTanqueOut
	; r0 JA TEM A POSICAO DO TANQUE NA TELA !!!
	dec r0 ; r0-- ---> vai um para a esquerda
	store posTanque2Out, r0 ; Guarda a posicao na tela atualizada
	
	jmp continuaTanque2	
TIRO2:
	; -- VERIFICACAO SE JA EXISTE UM TIRO --
	; r0 = direcao do tiro
	loadn r0, #dirTiro2
	loadi r0, r0
	loadn r1, #1 		; r1 = 1 ---> auxiliar para ver se existe tiro na tela
	cmp r0, r1			; Compara a direcao do tiro com 1
	jne continuaTanque2	; Se a direcao do tiro for diferente de 1, nao atira (ja existe um tiro)
	
	; -> Atualiza a posicao do tiro na tela
	; r0 = posicao do tanque na tela
	loadn r0, #posTanque2Out
	loadi r0, r0
	store posTiro2Out, r0 ; posTiroOut = posTanqueOut
	
	; -> Atualiza a posicao do tiro nos tijolos
	; r1 = posicao atual do tanque nos tijolos
	loadn r1, #posTanque2
	loadi r1, r1
	store posTiro2, r1 ; posTiro = posTanque
	
	; -> Atualiza a direcao do tiro
	; r2 = direcao do tanque na tela
	loadn r2, #dirTanque2
	loadi r2, r2
	store dirTiro2, r2 ; dirTiro = dirTanque
	
	jmp continuaTanque2
;		     		  FIM MOVE TANQUE
;========================================================;

;========================================================;
;						APAGA TANQUE
ApagaTanque2:
	; Empilha registradores para nao perder seus valores
	push r0
	push r1
	push r2
	
	; r0 recebe a posicao anterior do tanque na tela
	loadn r0, #posTanque2OutAnt
	loadi r0, r0
	; r1 recebe ' ' para apagar o tanque
	loadn r1, #' '
	; r2 recebe 39 para ir para a proxima linha de impressao
	loadn r2, #39
	
	; Apaga os quatro caracteres do tanque
	outchar r1, r0 	; Apaga o primeiro caractere
	inc r0 			; Vai para o caractere a direita
	outchar r1, r0 	; Apaga o segundo caractere
	add r0, r0, r2 	; Vai para a proxima linha
	outchar r1, r0	; Apaga o terceiro caractere
	inc r0 			; Vai para o caractere a direita
	outchar r1, r0	; Apaga o quarto caractere
	
	; Desempilha registradores
	pop r2
	pop r1
	pop r0
	rts	
;					 FIM APAGA TANQUE
;========================================================;

;========================================================;
;					  ATUALIZA TANQUE
AtualizaTanque2:
	; Empilha registradores para nao perder seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	
	; Antes de atualizar o tanque apaga o tanque na posicao anterior
	call ApagaTanque2
	
	; -- DETERMINANDO OS CARACTERES QUE SERAO USADOS --
	loadn r1, #tanqueChars ; r1 = ponteiro para os caracteres do tanque
	; r2 = direcao do tanque
	loadn r2, #dirTanque2
	loadi r2, r2
	add r1, r1, r2 ; r1 = tanqueChars + dirTanque ---> ponteiro na posicao do primeiro caractere da direcao certa
	
	; -- IMPRESSAO DOS CARACTERES --
	; r0 = posicao do tanque na tela
	loadn r0, #posTanque2Out
	loadi r0, r0
	loadn r4, #1792 ; cor amarela
	
	; -> Primeiro caractere
	loadi r3, r1 	; r3 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r3, r3, r4 	; Adiciona a cor
	outchar r3, r0	; Imprime o primeiro caractere
	
	; -> Segundo caractere
	inc r0 			; r0++ ---> posicao de impressao vai para a direita
	inc r1 			; r1++ ---> r1 aponta para o proximo caractere no vetor de caracteres
	loadi r3, r1 	; r3 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r3, r3, r4 	; Adiciona a cor
	outchar r3, r0	; Imprime o segundo caractere
	
	; -> Terceiro caractere
	loadn r2, #39 	; r2 = auxiliar para descer de linha (40 - 1 porque ja esta no caractere a direita da posicao do tanque)
	add r0, r0, r2 	; r0 += 39 ---> posicao de impressao vai para a proxima linha
	inc r1 			; r1++ ---> r1 aponta para o proximo caractere no vetor de caracteres
	loadi r3, r1 	; r3 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r3, r3, r4 	; Adiciona a cor
	outchar r3, r0	; Imprime o Terceiro caractere
	
	; -> Quarto caractere
	inc r0 			; r0++ ---> posicao de impressao vai para a direita
	inc r1 			; r1++ ---> r1 aponta para o caractere no vetor de caracteres
	loadi r3, r1 	; r3 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r3, r3, r4 	; Adiciona a cor
	outchar r3, r0	; Imprime o quarto caractere
	
	; Desempilha registradores
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;					 FIM ATUALIZA TANQUE
;========================================================;

;========================================================;
;					  ATUALIZA TIRO
AtualizaTiro2:
	push r0
	push r1
	push r2
	push r3
	
	; -- VERIFICA SE O TIRO EXISTE --
	; r0 = direcao do tiro
	loadn r0, #dirTiro2
	loadi r0, r0
	loadn r1, #1 			; r1 = auxiliar para ver se o tiro existe
	cmp r0, r1				; Compara a direcao do tiro com 1
	jeq fim_atualizaTiro2	; Se for 1 o tiro nao existe
	
	; -- APAGA TIRO ANTERIOR --
	; Chama funcao que apaga o tiro na posicao anterior
	call ApagaTiro2
	
	; -- ATUALIZA POSICAO E DIRECAO DO TIRO --
	; Chama funcao que atualiza a posicao e direicao do tiro
	call MoveTiro2
	
	; -- VERIFICA SE O TIRO DEVE SER IMPRESSO --
	; r0 = direcao do tiro
	loadn r0, #dirTiro2
	loadi r0, r0
	loadn r1, #1 			; r1 = auxiliar para ver se o tiro deve ser impresso
	cmp r0, r1				; Compara a direcao do tiro com 1
	jeq fim_atualizaTiro2	; Se for 1 o tiro nao deve ser impresso
	
	; -- IMPRESSAO DO TIRO --
	; r1 = posicao do tiro na tela
	loadn r1, #posTiro2Out
	loadi r1, r1
	; -> Verificacao do sentido do tiro
	loadn r2, #8				; Auxiliar para verificar o sentido do tiro
	mod r2, r0, r2 				; r2 = dirTiro % 8
	jz atualizaTiro2Horizontal	; Se dirTiro eh multiplo de 8 (UP ou DOWN) imprime o tiro no sentido horizontal
	
	; -> Impressao do tiro na vertical
	loadn r2, #tiroChars	; r2 = ponteiro para os caracteres do tiro
	add r2, r2, r0 			; r2 += dirTiro ---> aponta para o primeiro caractere da direcao certa
	loadi r0, r2 			; r0 recebe o caractere apontado pelo ponteiro de caracteres (r2)
	outchar r0, r1			; Imprime o primeiro caractere
	loadn r3, #40			; r3 = auxiliar para descer linha
	add r1, r1, r3			; r1 += 40 ---> desce uma linha na posicao de impressao
	inc r2 					; r0++ ---> r0 aponta para o proximo caractere no vetor de caracteres
	loadi r0, r2 			; r0 recebe o caractere apontado pelo ponteiro de caracteres (r2)
	outchar r0, r1			; Imprime o segundo caractere
	jmp fim_atualizaTiro2
	
	; -> Impressao do tiro na horizontal
atualizaTiro2Horizontal:
	loadn r2, #tiroChars	; r2 = ponteiro para os caracteres do tiro
	add r2, r2, r0 			; r2 += dirTiro ---> aponta para o primeiro caractere da direcao certa
	loadi r0, r2 			; r0 recebe o caractere apontado pelo ponteiro de caracteres (r2)
	outchar r0, r1			; Imprime o primeiro caractere
	inc r1					; r1 ++ ---> vai para a direita na posicao de impressao
	inc r2 					; r0++ ---> r0 aponta para o proximo caractere no vetor de caracteres
	loadi r0, r2 			; r0 recebe o caractere apontado pelo ponteiro de caracteres (r2)
	outchar r0, r1			; Imprime o segundo caractere
	
fim_atualizaTiro2:
	; desempilha registradores
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;					 FIM ATUALIZA TIRO
;========================================================;

;========================================================;
;						APAGA TIRO
ApagaTiro2:
	push r0
	push r1
	push r2
	; r0 = posicao do tanque
	loadn r0, #posTanque2Out
	loadi r0, r0
	; r1 = posicao do tiro
	loadn r1, #posTiro2Out
	loadi r1, r1
	cmp r0, r1 			; Compara a posicao do tiro e do tanque na tela
	jeq fim_apagaTiro2	; Se forem iguais nao apaga (para nao apagar o tanque)
	
	; -- APAGA O TIRO --
	; r0 = direcao do tiro
	loadn r0, #dirTiro2
	loadi r0, r0
	; -> Verificacao do sentido do tiro
	loadn r2, #8				; Auxiliar para verificar o sentido do tiro
	mod r2, r0, r2 				; r2 = dirTiro % 8
	jz apagaTiro2Horizontal	; Se dirTiro eh multiplo de 8 (UP ou DOWN) imprime o tiro no sentido horizontal
	
	; -> Apaga tiro na vertical
	; r1 JA TEM A POSICAO DO TIRO NA TELA
	loadn r0, #' ' 		; r0 = ' ' para apagar o tiro
	outchar r0, r1 		; Apaga o primeiro caractere
	loadn r2, #40		; r2 = auxiliar para descer a linha
	add r1, r1, r2 		; r1 += 40 ---> posicao de impressao desce uma linha
	outchar r0, r1		; Apaga o segundo caractere
	jmp fim_apagaTiro2
	
	; -> Apaga tiro na vertical
apagaTiro2Horizontal:
	; r1 JA TEM A POSICAO DO TIRO NA TELA
	loadn r0, #' ' 		; r0 = ' ' para apagar o tiro
	outchar r0, r1 		; Apaga o primeiro caractere
	inc r1				; r1++ ---> posicao de impressao vai para a direita
	outchar r0, r1		; Apaga o segundo caractere
	
fim_apagaTiro2:
	; desempilha registradores
	pop r2
	pop r1
	pop r0
	rts
;					  FIM APAGA TIRO
;========================================================;

;========================================================;
;						MOVE TIRO
MoveTiro2:
	; Empilha registradores para preservar seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	
	; r0 recebe a posicao do tanque na tela
	loadn r0, #posTiro2
	loadi r0, r0
	; r1 recebe a posicao do tiro na tela
	loadn r1, #posTiro2Out
	loadi r1, r1
	; r1 recebe a posicao do tiro na tela
	loadn r2, #dirTiro2
	loadi r2, r2
	
	; -- VERIFICA A DIRECAO DO TIRO PARA DETERMINAR O MOVIMENTO --
	loadn r3, #0
	cmp r2, r3
	jeq UP_tiro2
	
	loadn r3, #4
	cmp r2, r3
	jeq RIGHT_tiro2
	
	loadn r3, #8
	cmp r2, r3
	jeq DOWN_tiro2
	
	loadn r3, #12
	cmp r2, r3
	jeq LEFT_tiro2
	
fimTiro2:
	; -> Rotina para acabar com o tiro
	loadn r2, #1		; r2 = auxiliar para definir a direcao do tiro como NULL
	store dirTiro2, r2 	; Guarda NULL (1) na direcao do tiro para indicar que ele acabou
continuaTiro2:
	; Desempilha registradores
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
UP_tiro2: ; dirTiro = UP = 0
	; -- ATUALIZA A POSICAO DO TIRO  --
	; r0 JA TEM A POSICAO DO TIRO COM RELACAO AOS TIJOLOS
	loadn r2, #41 			; r2 = auxiliar para descer linha (40 + 1 por causa do '\0')
	sub r0, r0, r2 			; pos = pos - 41 ---> sobe uma linha (40 + 1 por causa do '\0')
	store posTiro2, r0 		; Guarda a posicao do tiro com relacao aos tijolos atualizada
	; r1 JA TEM A POSICAO DO TIRO COM RELACAO A TELA
	loadn r2, #40 			; r2 = auxiliar para descer linha
	sub r1, r1, r2 			; pos = pos - 40 ---> sobe uma linha
	store posTiro2Out, r1 		; Guarda a posicao do tiro na tela atualizada
	
	loadn r3, #86 			; r3 = auxiliar para verificar se chegou na menor posicao permitida
	cmp r0, r3 				; Verifica se ja esta na primeira linha
	jle fimTiro2 			; Se ja estiver na primeira linha acabou o tiro
	
	; -- VERIFICACAO SE A NOVA POSICAO EH UM TIJOLO --
	loadn r3, #'#' 				; r3 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r0 				; r5 = r5 + posTiro ---> ponteiro para o caractere do mapa de tijolos na nova posicao do tiro
	loadi r4, r5 				; r4 = caractere do mapa de tijolos na nova posicao do tiro
	cmp r3, r4 					; Compara o caractere na nova posicao do tiro com um tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo2 			; r1 ja tem posTiroOut e r5 ja tem a posTiro
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA!!! (O tiro tem dimensoes 1x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	inc r1						; Posicao na tela vai um para a direita
	loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 	ceq apaga_Tijolo 	; quebra o tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo2 			; r1 ja tem posTiroOut + 1 e r5 ja tem a posTiro + 1
	
	; -- VERIFICACAO SE A NOVA POSICAO EH O ADVERSÁRIO --
	dec r1
	loadn r5, #posTiro2Out
	loadi r5, r5
	loadn r3, #posTanque1Out
	loadi r3, r3

	cmp r5, r3
	ceq kill_2

	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA!!! (O tiro tem dimensoes 1x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	inc r1						; Posicao na tela vai um para a direita
	;loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r5 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 	ceq apaga_Tijolo 	; quebra o tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq kill_2 			; r1 ja tem posTiroOut + 1 e r5 ja tem a posTiro + 1

	; -- VERIFICA SE O TIRO ATINGIU UM TIJOLO --
	loadn r3, #' '		; r3  = auxiliar para verificar se o tiro atingiu um tijolo
	cmp r2, r3			; Compara r2 com ' '
	jeq fimTiro2			; Se r2 == ' ' quer dizer que atingiu um tijolo => acaba o tiro
	
	jmp continuaTiro2	
RIGHT_tiro2: ; dirTiro = RIGHT = 4
; OBSERVACAO: O tiro comeca na mesma posicao que o tanque, como o tanque eh 2x2
; na primeira movimentacao do tiro para a direita ele precisa se movimentar duas vezes
; para nao ocupar os caracteres direitos do tanque

	; -- ATUALIZA A POSICAO DO TIRO  --
	; r0 JA TEM A POSICAO DO TIRO COM RELACAO AOS TIJOLOS
	; r1 JA TEM A POSICAO DO TIRO NA TELA
	; r3 = posicao do tanque na tela
	loadn r3, #posTanque2Out
	loadi r3, r3
	cmp r3, r1				; Compara a posicao do tanque e do tiro na tela
	jne naoIncrementaRight2	; Se forem diferentes nao incrementa duas vezes (veja a observacao acima)
	
	; -> Movimento para direita
	inc r0 ; posTiro++ ---> vai um pra direita 
	inc r1 ; posTiroOut++ ---> vai pra direita
naoIncrementaRight2:
	; -> Movimento para direita
	inc r0 ; posTiro++ ---> vai um pra direita 
	inc r1 ; posTiroOut++ ---> vai pra direita
	
	store posTiro2, r0 		; Guarda a posicao do tiro com relacao aos tijolos atualizada
	store posTiro2Out, r1	; Guarda a posicao do tiro na tela atualizada
	
	loadn r2, #35 			; r2 = auxiliar para verificar se esta na ultima coluna
	loadn r3, #40			; r3 = auxiliar para fazer mod
	mod r3, r1, r3			; r3 = posTiroOut % 40 ---> r3 = coluna
	cmp r3, r2 				; Verifica se ja esta na ultima coluna (coluna 35 por causa da margem)
	jgr fimTiro2			; Se ja estiver na ultima coluna acabou o tiro
	
	; -- VERIFICACAO SE A NOVA POSICAO EH UM TIJOLO --
	loadn r3, #'#' 				; r3 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r0 				; r5 = r5 + posTiro ---> ponteiro para o caractere do mapa de tijolos na nova posicao do tiro
	loadi r4, r5 				; r4 = caractere do mapa de tijolos na nova posicao do tiro
	cmp r3, r4 					; Compara o caractere na nova posicao do tiro com um tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo2 			; r1 ja tem posTiroOut e r5 ja tem a posTiro
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE ABAIXO!!! (O tiro tem dimensoes 2x1)
	loadn r4, #41				; r4 = auxiliar para descer uma linha no mapa de tijolos
	add r5, r5, r4				; r5 += 41 ---> ponteiro do caractere desce uma linha (40 + 1 por causa do '\0')
	dec r4						; r4 = 40 ---> auxiliar para descer uma linha na tela
	add r1, r1, r4				; r1 += 40 ---> posicao na tela desce uma linha
	loadi r4, r5 				; r4 = caractere abaixo da nova posicao do tiro
	cmp r3, r4 					; Compara o caractere na nova posicao do tiro com um tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo2 			; r1 ja tem posTiroOut e r5 ja tem a posTiro
	
	; -- VERIFICACAO SE A NOVA POSICAO EH O ADVERSÁRIO --

	; -- ACERTOU NO MEIO
	dec r1
	loadn r5, #posTiro2Out
	loadi r5, r5
	loadn r3, #posTanque1Out
	loadi r3, r3
	cmp r5, r3
	ceq kill_2

	; ACERTOU NA PARTE DE CIMA (BUNDINHA) !!! (O tiro tem dimensoes 1x2)
	loadn r4, #41				; r4 = auxiliar para descer uma linha no mapa de tijolos
	add r5, r5, r4				; r5 += 41 ---> ponteiro do caractere desce uma linha (40 + 1 por causa do '\0')
	dec r4						; r4 = 40 ---> auxiliar para descer uma linha na tela
	add r1, r1, r4				; r1 += 40 ---> posicao na tela desce uma linha
	cmp r3, r5 					; Compara o caractere na nova posicao do tiro com o adversário
	ceq kill_2 			; r1 ja tem posTiroOut + 1 e r5 ja tem a posTiro + 1

	; -- VERIFICA SE O TIRO ATINGIU UM TIJOLO --
	loadn r3, #' '		; r3  = auxiliar para verificar se o tiro atingiu um tijolo
	cmp r2, r3			; Compara r2 com ' '
	jeq fimTiro2			; Se r2 == ' ' quer dizer que atingiu um tijolo => acaba o tiro
	
	jmp continuaTiro2
DOWN_tiro2: ; dirTiro = DOWN = 8
; OBSERVACAO: O tiro comeca na mesma posicao que o tanque, como o tanque eh 2x2
; na primeira movimentacao do tiro para baixo ele precisa descer duas vezes para
; nao ocupar os caracteres inferiores do tanque

	; -- ATUALIZA A POSICAO DO TIRO  --
	loadn r4, #41	; r4 = auxiliar para descer linha (40 + 1 por causa do '\0')
	loadn r2, #40	; r2 = auxiliar para descer linha na tela
	; r0 JA TEM A POSICAO DO TIRO COM RELACAO AOS TIJOLOS
	; r1 JA TEM A POSICAO DO TIRO NA TELA
	; r3 = posicao do tanque na tela
	loadn r3, #posTanque2Out
	loadi r3, r3
	cmp r3, r1				; Compara a posicao do tanque e do tiro na tela
	jne naoIncrementaDown2	; Se forem diferentes nao incrementa duas vezes (veja a observacao acima)

	; -> Movimento para baixo
	add r0, r0, r4 ; posTiro += 41 ---> sobe uma linha (40 + 1 por causa do '\0')
	add r1, r1, r2 ; posTiroOut += 40 ---> sobe uma linha
naoIncrementaDown2:
	; -> Movimento para baixo
	add r0, r0, r4 ; posTiro += 41 ---> sobe uma linha (40 + 1 por causa do '\0')
	add r1, r1, r2 ; posTiroOut += 40 ---> sobe uma linha
	
	store posTiro2, r0 		; Guarda a posicao do tiro com relacao aos tijolos atualizada
	store posTiro2Out, r1	; Guarda a posicao do tiro na tela atualizada
	
	loadn r3, #1142			; r3 = auxiliar para verificar se chegou na maior posicao permitida
	cmp r0, r3 				; Vrifica se ja esta na ultima linha
	jgr fimTiro2			; Se ja estiver na ultima linha acabou o tiro
	
	; -- VERIFICACAO SE A NOVA POSICAO EH UM TIJOLO --
	loadn r3, #'#' 				; r3 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r0 				; r5 = r5 + posTiro ---> ponteiro para o caractere do mapa de tijolos na nova posicao do tiro
	loadi r4, r5 				; r4 = caractere do mapa de tijolos na nova posicao do tiro
	cmp r3, r4 					; Compara o caractere na nova posicao do tiro com um tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo2 			; r1 ja tem posTiroOut e r5 ja tem a posTiro
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA!!! (O tiro tem dimensoes 1x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	inc r1						; Posicao na tela vai um para a direita
	loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r4 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 	ceq apaga_Tijolo 	; quebra o tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo2 			; r1 ja tem posTiroOut + 1 e r5 ja tem a posTiro + 1
	
	; -- VERIFICACAO SE A NOVA POSICAO EH O ADVERSÁRIO --
	dec r1
	loadn r5, #posTiro2Out
	loadi r5, r5
	loadn r3, #posTanque1Out
	loadi r3, r3

	cmp r5, r3
	ceq kill_2

	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA!!! (O tiro tem dimensoes 1x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	inc r1						; Posicao na tela vai um para a direita
	;loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r5 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 	ceq apaga_Tijolo 	; quebra o tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq kill_2 			; r1 ja tem posTiroOut + 1 e r5 ja tem a posTiro + 1

	; -- VERIFICA SE O TIRO ATINGIU UM TIJOLO --
	loadn r3, #' '		; r3  = auxiliar para verificar se o tiro atingiu um tijolo
	cmp r2, r3			; Compara r2 com ' '
	jeq fimTiro2			; Se r2 == ' ' quer dizer que atingiu um tijolo => acaba o tiro
	
	jmp continuaTiro2
LEFT_tiro2: ; dirTiro = LEFT = 12
	; -- ATUALIZA A POSICAO DO TIRO  --
	; r0 JA TEM A POSICAO DO TIRO COM RELACAO AOS TIJOLOS
	dec r0 					; posTiro-- ---> vai um para a esquerda
	store posTiro2, r0 		; Guarda a posicao do tiro com relacao aos tijolos atualizada
	; r1 JA TEM A POSICAO DO TIRO COM RELACAO A TELA
	dec r1 					; posTiroOut-- ---> vai um para a esquerda
	store posTiro2Out, r1	; Guarda a posicao do tiro na tela atualizada
	
	loadn r2, #4 			; r2 = auxiliar para verificar se esta na primeira coluna
	loadn r3, #40			; r3 = auxiliar para fazer mod
	mod r3, r1, r3			; r3 = posTiroOut % 40 ---> r3 = coluna
	cmp r3, r2				; Verifica se ja esta na primeira coluna (coluna 4 por causa da margem)
	jle fimTiro2 			; Se ja estiver na primeira coluna acabou o tiro
	
	; -- VERIFICACAO SE A NOVA POSICAO EH UM TIJOLO --
	loadn r3, #'#' 				; r3 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r5, #tijolosLinha0 	; r5 = ponteiro para o primeiro caractere do mapa de tijolos
	add r5, r5, r0 				; r5 = r5 + posTiro ---> ponteiro para o caractere do mapa de tijolos na nova posicao do tiro
	loadi r4, r5 				; r4 = caractere do mapa de tijolos na nova posicao do tiro
	cmp r3, r4 					; Compara o caractere na nova posicao do tiro com um tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo2 			; r1 ja tem posTiroOut e r5 ja tem a posTiro
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE ABAIXO!!! (O tiro tem dimensoes 2x1)
	loadn r4, #41				; r4 = auxiliar para descer uma linha no mapa de tijolos
	add r5, r5, r4				; r5 += 41 ---> ponteiro do caractere desce uma linha (40 + 1 por causa do '\0')
	dec r4						; r4 = 40 ---> auxiliar para descer uma linha na tela
	add r1, r1, r4				; r1 += 40 ---> posicao na tela desce uma linha
	loadi r4, r5 				; r4 = caractere abaixo da nova posicao do tiro
	cmp r3, r4 					; Compara o caractere na nova posicao do tiro com um tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq quebra_Tijolo2 			; r1 ja tem posTiroOut e r5 ja tem a posTiro
	
	; -- VERIFICACAO SE A NOVA POSICAO EH O ADVERSÁRIO --
	dec r1
	loadn r5, #posTiro2Out
	loadi r5, r5
	loadn r3, #posTanque1Out
	loadi r3, r3

	cmp r5, r3
	ceq kill_2

	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA!!! (O tiro tem dimensoes 1x2)
	inc r5						; Ponteiro para caractere vai um para a direita
	inc r1						; Posicao na tela vai um para a direita
	;loadi r4, r5 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r3, r5 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir 	ceq apaga_Tijolo 	; quebra o tijolo
	; Se for igual chama a rotina de quebrar tijolo: r1 = posicao na tela, r5 = posicao no mapa de tijolo
	ceq kill_2 			; r1 ja tem posTiroOut + 1 e r5 ja tem a posTiro + 1

	; -- VERIFICA SE O TIRO ATINGIU UM TIJOLO --
	loadn r3, #' '		; r3  = auxiliar para verificar se o tiro atingiu um tijolo
	cmp r2, r3			; Compara r2 com ' '
	jeq fimTiro2			; Se r2 == ' ' quer dizer que atingiu um tijolo => acaba o tiro
	
	jmp continuaTiro2
	
quebra_Tijolo2:
	; GUARDA ' ' NA POSICAO r5 DA MEMORIA E IMPRIME ' ' NA POSICAO r1 DA TELA
	loadn r2, #' '
	storei r5, r2
	outchar r2, r1
	rts

kill_2:
	; GUARDA ' ' NA POSICAO r5 DA MEMORIA E IMPRIME ' ' NA POSICAO r1 DA TELA
	loadn r2, #' '
	storei r5, r2
	outchar r2, r1

	call ApagaTanque1
	call DelayMaior
	call SpawnTanque1

	rts
;========================================================;
;					FIM FUNÇÕES TANQUE 2
;========================================================;



;========================================================;
;                       APAGA TELA                       
ApagaTela:
	push r0  
	push r1
	
	loadn r0, #1200		; apaga as 1200 posicoes da Tela
	loadn r1, #' '		; com "espaco"
	
	   ApagaTela_Loop:	
		dec r0
		outchar r1, r0
		jnz ApagaTela_Loop
 
	pop r1
	pop r0
	rts
;                      FIM APAGA TELA                       
;========================================================;	

;========================================================;
;					  IMPRIME String                     
;r0 = Posicao de inicio da impressao
;r1 = Endereco da string que sera impressa
;r2 = Cor da impressao
ImprimeString:
	; Empilha registradores para proteger seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	
	; Carrega 0 em r4 para condicao de parada ('\0')
	loadn r4, #'\0'
	
loop_imprimeString:
	loadi r3, r1 ; carrega em r3 o valor do caractere apontado por r1
	cmp r3, r4	 ; compara r3 com '\0' se for igual -> chegou ao fim da string
	jeq sai_imprimeString ; se r3 == r4 -> para a impressao
	add r3, r2, r3 ; adiciona a cor da string
	outchar r3, r0 ; imprime o caractere apontado por r1 na posição r0 com a cor r2
	; Incrementa o ponteiro para o proximo char e a posicao da impressao
	inc r0
	inc r1
	jmp loop_imprimeString
	
sai_imprimeString:
	; Desempliha registradores
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;					FIM IMPRIME String                   
;========================================================;

;========================================================;
;			    IMPRIME String SEM ESPACO                
;
;r0 = Posicao de inicio da impressao
;r1 = Endereco da string que sera impressa
;r2 = Cor da impressao
ImprimeString2:
	; Empilha registradores para proteger seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	
	; Carrega 0 em r4 para condicao de parada ('\0')
	loadn r4, #'\0'
	; Carrega ' ' em r5 para saber se imprime o caractere ou nao
	loadn r5, #' '
	
loop_imprimeString2:
	loadi r3, r1 ; carrega em r3 o valor do caractere apontado por r1
	cmp r3, r4	 ; compara r3 com '\0' se for igual -> chegou ao fim da string
	jeq sai_imprimeString2 ; se r3 == r4 -> para a impressao
	cmp r3, r5	 ; compara r3 com ' ' se for igual -> não imprime o caractere
	jeq is_espaco ; se r3 for um ' ' pula para o proximo caractere
	add r3, r2, r3 ; adiciona a cor da string
	outchar r3, r0 ; imprime o caractere apontado por r1 na posição r0 com a cor r2
is_espaco:
	; Incrementa o ponteiro para o proximo char e a posicao da impressao
	inc r0
	inc r1
	jmp loop_imprimeString2
	
sai_imprimeString2:
	; Desempliha registradores
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;	          FIM IMPRIME String SEM ESPACO              
;========================================================;

;========================================================;
;                     IMPRIME MARGEM                     
ImprimeMargem:
	; Empilha registradores para proteger seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5

	loadn r0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn r1, #margemLinha0 ; ponteiro inicial da margem
	loadn r2, #2048	; cor = CINZA
	loadn r3, #40  	; Incremento da posicao da tela!
	loadn r4, #41  	; incremento do ponteiro das linhas da tela
	loadn r5, #1200 ; Limite da tela!
	
	
loop_imprimeMargem:
	call ImprimeString
	add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = R0 + 40
	add r1, r1, r4  	; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 por causa do /0 !!) --> r1 = r1 + 41
	cmp r0, r5			; Compara r0 com 1200
	jne loop_imprimeMargem	; Enquanto r0 < 1200
	; Desempilha registradores
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;                   FIM IMPRIME MARGEM                   
;========================================================;

;========================================================;
;                     IMPRIME TIJOLOS      
ImprimeTijolos:
	; Empilha registradores para preservar seus valores
	push r1
	push r2
	
	; Impressao dos tijolos
	loadn r1, #tijolosLinha0
	loadn r2, #256 ; cor = Marrom
	call ImprimeTela
	
	; Desempilha registradores
	pop r2
	pop r1
	
	rts
;                   FIM IMPRIME TIJOLOS      
;========================================================;

;========================================================;
;                     IMPRIME TELA      
;
; <- r1 = ponteiro para a primeira linha da tela 
; <- r2 = cor da tela           
ImprimeTela:
	; Empilha registradores para proteger seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5

	loadn r0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn r3, #40  	; Incremento da posicao da tela!
	loadn r4, #41  	; incremento do ponteiro das linhas da tela
	loadn r5, #1200 ; Limite da tela!
	
	
loop_imprimeTela:
	call ImprimeString2
	add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = R0 + 40
	add r1, r1, r4  	; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 por causa do /0 !!) --> r1 = r1 + 41
	cmp r0, r5			; Compara r0 com 1200
	jne loop_imprimeTela	; Enquanto r0 < 1200
	
	; Desempilha registradores
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;                   FIM IMPRIME TELA                   
;========================================================;

;========================================================;
;						  DELAY
Delay:
	; Empilha registradores para nao perder seus valores
	push r0
	push r1
	
	loadn r0, #60
loop_delay1:
	loadn r1, #3000
loop_delay2:
	dec r1
	jnz loop_delay2
	dec r0
	jnz loop_delay1
	
	pop r1
	pop r0
	rts
;						FIM DELAY
;========================================================;

;========================================================;
;						  DELAY MAIOR
DelayMaior:
	; Empilha registradores para nao perder seus valores
	push r0
	push r1
	
	loadn r0, #6000
loop_delay1:
	loadn r1, #300000
loop_delay2:
	dec r1
	jnz loop_delay2
	dec r0
	jnz loop_delay1
	
	pop r1
	pop r0
	rts
;						FIM DELAY
;========================================================;
;	BATTLE CITY

jmp main

;********************************************************;
;                         DADOS                          ;
;********************************************************;

; ------------- TANQUE DO JOGADOR 1-----------------;
; Variaveis para controle de posicao o tanque 1
posTanque1 : var #1 			; Posicao do tanque com realacao ao mapa de tijolos
posTanqueAnt1 : var #1 		; Posicao anterior do tanque nos tijolos
; Variaveis para controle de direcao do tanque 1
; UP = 0, RIGHT = 4, DOWN = 8, LEFT = 12
dirTanque1 : var #1 		; Direcao atual do tanque
dirTanqueAnt1 : var #1 	; Direcao anterior do tanque
corTanque1 : var #1
	static corTanque1 + #0, #2816 ; amarelo
vidaTanque1 : var #1
; -------------- TIRO DO JOGADOR 1------------------;
; Variaveis para controle de posicao do tiro do tanque 1
posTiro1 : var #1 	; Posicao do tiro com relacao aos tijolos
; Direcao do tiro
dirTiro1 : var #1 ; UP = 0, RIGHT = 4, DOWN = 8, LEFT = 12, NULL = 1
; -------------------------------------------------;

; ------------- TANQUE DO JOGADOR 2-----------------;
; Variaveis para controle de posicao o tanque 2
posTanque2 : var #1 			; Posicao do tanque com realacao ao mapa de tijolos
posTanqueAnt2 : var #1 		; Posicao anterior do tanque nos tijolos
; Variaveis para controle de direcao do tanque 2
; UP = 0, RIGHT = 4, DOWN = 8, LEFT = 12
dirTanque2 : var #1 		; Direcao atual do tanque
dirTanqueAnt2 : var #1 	; Direcao anterior do tanque
corTanque2 : var #1
	static corTanque2 + #0, #2560 ; lima
vidaTanque2 : var #1
; -------------- TIRO DO JOGADOR 2------------------;
; Variaveis para controle de posicao do tiro do tanque 2
posTiro2 : var #1 	; Posicao do tiro com relacao aos tijolos
; Direcao do tiro
dirTiro2 : var #1 ; UP = 0, RIGHT = 4, DOWN = 8, LEFT = 12, NULL = 1
; -------------------------------------------------;

; -> CARACTERES DE TANQUE.
tanqueChars: string "abcdefghijklmnop"

; -> CARACTERES DE TIRO.
tiroChars: string "$%  &'  $(  )'"


; -> MARGEM DA TELA DO JOGO. cor: cinza
margemLinha0:  string "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
margemLinha1:  string "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
margemLinha2:  string "@@@@               qr               @@@"
margemLinha3:  string "@@@@               st               @@@"
margemLinha4:  string "@@@@                                @@@"
margemLinha5:  string "@@@@                                @@@"
margemLinha6:  string "@@@@                                @@@"
margemLinha7:  string "@@@@                                @@@"
margemLinha8:  string "@@@@                                @@@"
margemLinha9:  string "@@@@                                @@@"
margemLinha10: string "@@@@                                @@@"
margemLinha11: string "@@@@                                @@@"
margemLinha12: string "@@@@                                @@@"
margemLinha13: string "@@@@                                @@@"
margemLinha14: string "@@@@                                @@@"
margemLinha15: string "@@@@                                @@@"
margemLinha16: string "@@@@                                @@@"
margemLinha17: string "@@@@                                @@@"
margemLinha18: string "@@@@                                @@@"
margemLinha19: string "@@@@                                @@@"
margemLinha20: string "@@@@                                @@@"
margemLinha21: string "@@@@                                @@@"
margemLinha22: string "@@@@                                @@@"
margemLinha23: string "@@@@                                @@@"
margemLinha24: string "@@@@                                @@@"
margemLinha25: string "@@@@                                @@@"
margemLinha26: string "@@@@               qr               @@@"
margemLinha27: string "@@@@               st               @@@"
margemLinha28: string "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
margemLinha29: string "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

; -> TIJOLOS. cor: marrom
tijolosLinha0:  string "                                       "
tijolosLinha1:  string "                                       "
tijolosLinha2:  string "                 ##  ##                "
tijolosLinha3:  string "                 ##  ##                "
tijolosLinha4:  string "      ###  ###   ######   ###  ###     "
tijolosLinha5:  string "      ###  ###   ######   ###  ###     "
tijolosLinha6:  string "      ###  ###            ###  ###     "
tijolosLinha7:  string "      ###  ###  ###  ###  ###  ###     "
tijolosLinha8:  string "      ###  ###  ########  ###  ###     "
tijolosLinha9:  string "           ###  ########  ###          "
tijolosLinha10: string "    ###         ########         ###   "
tijolosLinha11: string "    ###         ###  ###         ###   "
tijolosLinha12: string "         #####            #####        "
tijolosLinha13: string "         #####            #####        "
tijolosLinha14: string "                ########               "
tijolosLinha15: string "                ########               "
tijolosLinha16: string "         #####            #####        "
tijolosLinha17: string "         #####            #####        "
tijolosLinha18: string "    ###         ###  ###         ###   "
tijolosLinha19: string "    ###         ########         ###   "
tijolosLinha20: string "           ###  ########  ###          "
tijolosLinha21: string "      ###  ###  ########  ###  ###     "
tijolosLinha22: string "      ###  ###  ###  ###  ###  ###     "
tijolosLinha23: string "      ###  ###            ###  ###     "
tijolosLinha24: string "      ###  ###   ######   ###  ###     "
tijolosLinha25: string "      ###  ###   ######   ###  ###     "
tijolosLinha26: string "                 ##  ##                "
tijolosLinha27: string "                 ##  ##                "
tijolosLinha28: string "                                       "
tijolosLinha29: string "                                       "


tijolosLinhaStatic0:  string "                                       "
tijolosLinhaStatic1:  string "                                       "
tijolosLinhaStatic2:  string "                 ##  ##                "
tijolosLinhaStatic3:  string "                 ##  ##                "
tijolosLinhaStatic4:  string "      ###  ###   ######   ###  ###     "
tijolosLinhaStatic5:  string "      ###  ###   ######   ###  ###     "
tijolosLinhaStatic6:  string "      ###  ###            ###  ###     "
tijolosLinhaStatic7:  string "      ###  ###  ###  ###  ###  ###     "
tijolosLinhaStatic8:  string "      ###  ###  ########  ###  ###     "
tijolosLinhaStatic9:  string "           ###  ########  ###          "
tijolosLinhaStatic10: string "    ###                          ###   "
tijolosLinhaStatic11: string "    ###                          ###   "
tijolosLinhaStatic12: string "         #########    #########        "
tijolosLinhaStatic13: string "         #########    #########        "
tijolosLinhaStatic14: string "              ####    ####             "
tijolosLinhaStatic15: string "              ####    ####             "
tijolosLinhaStatic16: string "         #########    #########        "
tijolosLinhaStatic17: string "         #########    #########        "
tijolosLinhaStatic18: string "    ###                          ###   "
tijolosLinhaStatic19: string "    ###                          ###   "
tijolosLinhaStatic20: string "           ###  ########  ###          "
tijolosLinhaStatic21: string "      ###  ###  ########  ###  ###     "
tijolosLinhaStatic22: string "      ###  ###  ###  ###  ###  ###     "
tijolosLinhaStatic23: string "      ###  ###            ###  ###     "
tijolosLinhaStatic24: string "      ###  ###   ######   ###  ###     "
tijolosLinhaStatic25: string "      ###  ###   ######   ###  ###     "
tijolosLinhaStatic26: string "                 ##  ##                "
tijolosLinhaStatic27: string "                 ##  ##                "
tijolosLinhaStatic28: string "                                       "
tijolosLinhaStatic29: string "                                       "


battleCityLinha0:  string "                                       "
battleCityLinha1:  string "                                       "
battleCityLinha2:  string "                                       "
battleCityLinha3:  string "                                       "
battleCityLinha4:  string "   ####    #   ##### ##### #    #####  "
battleCityLinha5:  string "   #   #  # #    #     #   #    #      "
battleCityLinha6:  string "   ####  #   #   #     #   #    ####   "
battleCityLinha7:  string "   #   # #####   #     #   #    #      "
battleCityLinha8:  string "   ####  #   #   #     #   #### #####  "
battleCityLinha9:  string "                                       "
battleCityLinha10: string "                                       "
battleCityLinha11: string "          ##   ###  ##### #   #        "
battleCityLinha12: string "         #  #   #     #    # #         "
battleCityLinha13: string "         #      #     #     #          "
battleCityLinha14: string "         #  #   #     #     #          "
battleCityLinha15: string "          ##   ###    #     #          "
battleCityLinha16: string "                                       "
battleCityLinha17: string "                                       "
battleCityLinha18: string "                                       "
battleCityLinha19: string "                                       "
battleCityLinha20: string "                                       "
battleCityLinha21: string "                                       "
battleCityLinha22: string "                                       "
battleCityLinha23: string "                                       "
battleCityLinha24: string "                                       "
battleCityLinha25: string "                                       "
battleCityLinha26: string "                                       "
battleCityLinha27: string "                                       "
battleCityLinha28: string "                                       "
battleCityLinha29: string "                                       "


telaInicialLinha0:  string "                                       "
telaInicialLinha1:  string "                                       "
telaInicialLinha2:  string "                                       "
telaInicialLinha3:  string "                                       "
telaInicialLinha4:  string "                                       "
telaInicialLinha5:  string "                                       "
telaInicialLinha6:  string "                                       "
telaInicialLinha7:  string "                                       "
telaInicialLinha8:  string "                                       "
telaInicialLinha9:  string "                                       "
telaInicialLinha10: string "                                       "
telaInicialLinha11: string "                                       "
telaInicialLinha12: string "                                       "
telaInicialLinha13: string "                                       "
telaInicialLinha14: string "                                       "
telaInicialLinha15: string "                                       "
telaInicialLinha16: string "                                       "
telaInicialLinha17: string "                                       "
telaInicialLinha18: string "                                       "
telaInicialLinha19: string "                                       "
telaInicialLinha20: string "                                       "
telaInicialLinha21: string "                                       "
telaInicialLinha22: string "        PRESS [SPACE] TO START         "
telaInicialLinha23: string "                                       "
telaInicialLinha24: string "                                       "
telaInicialLinha25: string "                                       "
telaInicialLinha26: string "                                       "
telaInicialLinha27: string "                                       "
telaInicialLinha28: string "                                       "
telaInicialLinha29: string "                                       "


jogador2GanhouLinha0:  string "                                       "
jogador2GanhouLinha1:  string "                                       "
jogador2GanhouLinha2:  string "                                       "
jogador2GanhouLinha3:  string "                                       "
jogador2GanhouLinha4:  string "  ###  #      #  #   # #### ###   ###  "
jogador2GanhouLinha5:  string "  #  # #     # #  # #  #    #  #     # "
jogador2GanhouLinha6:  string "  ###  #    #   #  #   ###  ###    ##  "
jogador2GanhouLinha7:  string "  #    #    #####  #   #    # #   #    "
jogador2GanhouLinha8:  string "  #    #### #   #  #   #### #  #  #### "
jogador2GanhouLinha9:  string "                                       "
jogador2GanhouLinha10: string "                                       "
jogador2GanhouLinha11: string "      #     # ### #  #  ###  # #       "
jogador2GanhouLinha12: string "      #     #  #  ## # #     # #       "
jogador2GanhouLinha13: string "       # # #   #  # ##  ##   # #       "
jogador2GanhouLinha14: string "       # # #   #  #  #    #            "
jogador2GanhouLinha15: string "        # #   ### #  # ###   # #       "
jogador2GanhouLinha16: string "                                       "
jogador2GanhouLinha17: string "                                       "
jogador2GanhouLinha18: string "                                       "
jogador2GanhouLinha19: string "                                       "
jogador2GanhouLinha20: string "                                       "
jogador2GanhouLinha21: string "                                       "
jogador2GanhouLinha22: string "       PRESS [SPACE] TO RESTART        "
jogador2GanhouLinha23: string "                                       "
jogador2GanhouLinha24: string "                                       "
jogador2GanhouLinha25: string "                                       "
jogador2GanhouLinha26: string "                                       "
jogador2GanhouLinha27: string "                                       "
jogador2GanhouLinha28: string "                                       "
jogador2GanhouLinha29: string "                                       "


jogador1GanhouLinha0:  string "                                       "
jogador1GanhouLinha1:  string "                                       "
jogador1GanhouLinha2:  string "                                       "
jogador1GanhouLinha3:  string "                                       "
jogador1GanhouLinha4:  string "  ###  #      #   #   # #### ###    #  "
jogador1GanhouLinha5:  string "  #  # #     # #   # #  #    #  #  ##  "
jogador1GanhouLinha6:  string "  ###  #    #   #   #   ###  ###    #  "
jogador1GanhouLinha7:  string "  #    #    #####   #   #    # #    #  "
jogador1GanhouLinha8:  string "  #    #### #   #   #   #### #  #  ### "
jogador1GanhouLinha9:  string "                                       "
jogador1GanhouLinha10: string "                                       "
jogador1GanhouLinha11: string "      #     # ### #  #  ###  # #       "
jogador1GanhouLinha12: string "      #     #  #  ## # #     # #       "
jogador1GanhouLinha13: string "       # # #   #  # ##  ##   # #       "
jogador1GanhouLinha14: string "       # # #   #  #  #    #            "
jogador1GanhouLinha15: string "        # #   ### #  # ###   # #       "
jogador1GanhouLinha16: string "                                       "
jogador1GanhouLinha17: string "                                       "
jogador1GanhouLinha18: string "                                       "
jogador1GanhouLinha19: string "                                       "
jogador1GanhouLinha20: string "                                       "
jogador1GanhouLinha21: string "                                       "
jogador1GanhouLinha22: string "       PRESS [SPACE] TO RESTART        "
jogador1GanhouLinha23: string "                                       "
jogador1GanhouLinha24: string "                                       "
jogador1GanhouLinha25: string "                                       "
jogador1GanhouLinha26: string "                                       "
jogador1GanhouLinha27: string "                                       "
jogador1GanhouLinha28: string "                                       "
jogador1GanhouLinha29: string "                                       "



;********************************************************;
;                         CODIGO                         ;
;********************************************************;

main:
	; Apaga todos os caracteres da tela	
	call ApagaTela
	
	call ImprimeBattleCity
	
	call ImprimeTelaInicial
	
	loadn r2, #' '
Loop_inicial:
	inchar r1
	cmp r2, r1
	jne Loop_inicial
	
	; Apaga todos os caracteres da tela
	call ApagaTela
	
	; Imprime a margem
	call ImprimeMargem
	
	; Imprime os tijolos
	call ImprimeTijolos
	
	; Spawna os tanques
	call spawnaTanque1
	call spawnaTanque2
	
	; Loop 1 do jogo
	loadn r0, #0 ; Contador de loops, c = 0
	Loop:
		call MoveTanque	; Chama rotina de movimento do tanque se c % 5 == 0
	
		call AtualizaTiro
	
		call Delay
		inc r0 	;c++
		jmp Loop
	
	
	halt
	
;========================================================;
;						SPAWN TANQUE 1
spawnaTanque1:
	push r0
	
	; Posicao inicial do tanque do jogador 1 com relacao aos tijolos = 1054
	loadn r0, #1054
	store posTanque1, r0	
		
	; Direcao inicial do tanque do jogador = UP = 0
	loadn r0, #0
	store dirTanque1, r0
		
	; Direcao inicial do tiro do jogador = NULL = 1
	loadn r0, #1
	store dirTiro1, r0
	
	; Vida inicial do tiro do jogador = 99
	loadn r0, #99
	store vidaTanque1, r0
	
	; Inicia a posicao anterior em um lugar vazio, para nao apagar o mapa
	loadn r0, #84
	store posTanqueAnt1, r0
	
	pop r0	
	rts
;					FIM SPAWN TANQUE 1
;========================================================;

;========================================================;
;						SPAWN TANQUE 2
spawnaTanque2:
	push r0
		
	; Posicao inicial do tanque do jogador 2 = 104
	loadn r0, #104
	store posTanque2, r0
	
	; Direcao inicial do tanque do jogador 2 = DOWN = 8
	loadn r0, #8
	store dirTanque2, r0
	
	; Direcao inicial do tiro do jogador 2 = NULL = 1
	loadn r0, #1
	store dirTiro2, r0
	
	; Vida inicial do tiro do jogador = 99
	loadn r0, #99
	store vidaTanque2, r0
	
	; Inicia a posicao anterior em um lugar vazio, para nao apagar o mapa
	loadn r0, #84
	store posTanqueAnt2, r0
	
	pop r0	
	rts
;					FIM SPAWN TANQUE 2
;========================================================;

;========================================================;
;						APAGA TANQUE
; <- r6 = endereco da posicao anterior do tanque
ApagaTanque:
	; Empilha registradores para nao perder seus valores
	push r0
	push r1
	push r2
	push r6
	
	; r0 recebe a posicao anterior do tanque na tela
	loadi r0, r6
	; r1 recebe ' ' para apagar o tanque
	loadn r1, #' '
	; r2 recebe 39 para ir para a proxima linha de impressao
	loadn r2, #39
	
	; Apaga os quatro caracteres do tanque
	outchar r1, r0 	; Apaga o primeiro caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	inc r0 			; Vai para o caractere a direita
	outchar r1, r0 	; Apaga o segundo caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	add r0, r0, r2 	; Vai para a proxima linha
	outchar r1, r0	; Apaga o terceiro caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	inc r0 			; Vai para o caractere a direita
	outchar r1, r0	; Apaga o quarto caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	
	; Desempilha registradores
	pop r6
	pop r2
	pop r1
	pop r0
	rts	
;					  FIM APAGA TANQUE
;========================================================;

;========================================================;
;						ATUALIZA TANQUE
; <- r7 = endereco da posicao atual do tanque
; <- r6 = endereco da posicao anterior do tanque
; <- r5 = endereco da direcao atual do tanque
; <- r4 = endereco da direcao anterior do tanque
; <- r3 = cor do tanque
AtualizaTanque:
	; Empilha registradores para proteger seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	loadi r1, r7 ; r1 = posicao atual do tanque
	loadi r2, r6 ; r2 = posicao anterior do tanque
	cmp r1, r2 ; compara a posicao atual e anterior
	jne atualiza ; se a posicao mudou, atualiza
	
	loadi r1, r5 ; r1 = direcao atual do tanque
	loadi r2, r4 ; r2 = direcao anterior do tanque
	cmp r1, r2 ; compara a direcao atual e anterior
	jne atualiza ; se a direcao mudou, atualiza
	
fim_atualizaTanque:
	; posicao anterior <= posicao atual
	loadi r1, r7
	storei r6, r1
	
	; direcao anterior <= direcao atual
	loadi r1, r5
	storei r4, r1
	
	
	; Desempilha registradores
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0		
	rts
	
atualiza:

	; r0 = posicao do tanque
	loadi r0, r7
	loadn r1, #99
	cmp r0, r1
	jeq jogador2Perdeu
	loadn r1, #1059
	cmp r0, r1
	jeq jogador1Perdeu
	
	; r6 <- endereco da posicao anterior do tanque
	call ApagaTanque
	
	; Define os caracteres que vao ser usados
	loadn r1, #tanqueChars ; carrega o vetor de caracteres em r1
	loadi r2, r5 ; r2 = direcao do tanque
	add r1, r1, r2 ; agora r1 aponta para o primeiro caractere da direcao correta
	
	
	; -- IMPRESSAO DOS CARACTERES --
	
	; -> Primeiro caractere
	loadi r2, r1 	; r2 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r2, r2, r3 	; Adiciona a cor
	outchar r2, r0	; Imprime o primeiro caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	call acertou_aguia
	
	; -> Segundo caractere
	inc r0 			; r0++ ---> posicao de impressao vai para a direita
	inc r1 			; r1++ ---> r1 aponta para o proximo caractere no vetor de caracteres
	loadi r2, r1 	; r2 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r2, r2, r3 	; Adiciona a cor
	outchar r2, r0	; Imprime o segundo caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	call acertou_aguia
	
	; -> Terceiro caractere
	loadn r2, #39 	; r2 = auxiliar para descer de linha (40 - 1 porque ja esta no caractere a direita da posicao do tanque)
	add r0, r0, r2 	; r0 += 39 ---> posicao de impressao vai para a proxima linha
	inc r1 			; r1++ ---> r1 aponta para o proximo caractere no vetor de caracteres
	loadi r2, r1 	; r2 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r2, r2, r3 	; Adiciona a cor
	outchar r2, r0	; Imprime o terceiro caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	call acertou_aguia
	
	; -> Quarto caractere
	inc r0 			; r0++ ---> posicao de impressao vai para a direita
	inc r1 			; r1++ ---> r1 aponta para o caractere no vetor de caracteres
	loadi r2, r1 	; r2 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r2, r2, r3 	; Adiciona a cor
	outchar r2, r0	; Imprime o quarto caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	call acertou_aguia
	
	
	jmp fim_atualizaTanque
	
; <- r0 = posicao q vai comparar com a aguia
acertou_aguia:
	push r0
	push r1
	
	loadn r1, #99
	cmp r0, r1
	jeq jogador2Perdeu
	loadn r1, #100
	cmp r0, r1
	jeq jogador2Perdeu
	loadn r1, #139
	cmp r0, r1
	jeq jogador2Perdeu
	loadn r1, #140
	cmp r0, r1
	jeq jogador2Perdeu
	loadn r1, #1059
	cmp r0, r1
	jeq jogador1Perdeu
	loadn r1, #1060
	cmp r0, r1
	jeq jogador1Perdeu
	loadn r1, #1099
	cmp r0, r1
	jeq jogador1Perdeu
	loadn r1, #1100
	cmp r0, r1
	jeq jogador1Perdeu
	
	pop r1
	pop r0
	rts
;					  FIM ATUALIZA TANQUE
;========================================================;

;========================================================;
;						MOVE TANQUE
MoveTanque:
	; Empilha registradores para proteger seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	; Pega o input do jogador
	inchar r1
	
	; Carrega o endereco de posTanque1 em r7
	loadn r7, #posTanque1
	; Carrega o endereco de dirTanque1 em r6
	loadn r6, #dirTanque1
	; Carrega o endereco de posTiro1 em r5
	loadn r5, #posTiro1
	; Carrega o endereco de dirTiro1 em r4
	loadn r4, #dirTiro1
	
	load r3, vidaTanque1
	loadn r2, #90
	cmp r3, r2
	cle incrementaVida1
	jle tanque1Morto
	
	; Atualiza a posicao do tanque 1 dependendo do input do usuário
	loadn r2, #'w'
	cmp r1, r2
	jeq UP_tanque ; Move UP
	
	loadn r2, #'d'
	cmp r1, r2
	jeq RIGHT_tanque ; Move RIGHT
	
	loadn r2, #'s'
	cmp r1, r2
	jeq DOWN_tanque ; Move DOWN
	
	loadn r2, #'a'
	cmp r1, r2
	jeq LEFT_tanque ; Move LEFT
	
	loadn r2, #'f'
	cmp r1, r2
	ceq Tiro ; Tiro
	jeq continuaTanque
	
tanque1Morto:

	; Carrega o endereco de posTanque2 em r7
	loadn r7, #posTanque2
	; Carrega o endereco de dirTanque2 em r6
	loadn r6, #dirTanque2
	; Carrega o endereco de posTiro2 em r5
	loadn r5, #posTiro2
	; Carrega o endereco de dirTiro2 em r4
	loadn r4, #dirTiro2
	
	load r3, vidaTanque2
	loadn r2, #90
	cmp r3, r2
	cle incrementaVida2
	jle continuaTanque
	
	; Atualiza a posicao do tanque 2 dependendo do input do usuário
	loadn r2, #'i'
	cmp r1, r2
	jeq UP_tanque ; Move UP
	
	loadn r2, #'l'
	cmp r1, r2
	jeq RIGHT_tanque ; Move RIGHT
	
	loadn r2, #'k'
	cmp r1, r2
	jeq DOWN_tanque ; Move DOWN
	
	loadn r2, #'j'
	cmp r1, r2
	jeq LEFT_tanque ; Move LEFT
	
	loadn r2, #'h'
	cmp r1, r2
	ceq Tiro ; Tiro
	
continuaTanque:

	load r3, vidaTanque1
	loadn r2, #90
	cmp r3, r2
	jle naoAtualizaTanque1
	; Atualiza o tanque 1
	loadn r7, #posTanque1
	loadn r6, #posTanqueAnt1
	loadn r5, #dirTanque1
	loadn r4, #dirTanqueAnt1
	load r3, corTanque1
	call AtualizaTanque
naoAtualizaTanque1:

	
	load r3, vidaTanque2
	loadn r2, #90
	cmp r3, r2
	jle naoAtualizaTanque2
	; Atualiza o tanque 2
	loadn r7, #posTanque2
	loadn r6, #posTanqueAnt2
	loadn r5, #dirTanque2
	loadn r4, #dirTanqueAnt2
	load r3, corTanque2
	call AtualizaTanque
naoAtualizaTanque2:

	; Desempilha registradores
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0		
	rts
	
incrementaVida1:
	load r3, vidaTanque1
	inc r3
	store vidaTanque1, r3
	loadn r2, #10
	cmp r3, r2
	ceg spawnaTanque1
	rts	
incrementaVida2:
	load r3, vidaTanque2
	inc r3
	store vidaTanque2, r3
	loadn r2, #10
	cmp r3, r2
	ceg spawnaTanque2
	rts
;						FIM MOVE TANQUE
;========================================================;

;-------------------------------------------------------;
;                         UP TANQUE
; Move um tanque para cima
; <- r7 = endereco da posicao do tanque 
; <- r6 = endereco da direcao do tanque
UP_tanque:
	; Carrega a posicao do tanque em r0
	loadi r0, r7
	
	; Atualiza a direcao
	loadn r1, #0
	storei r6, r1 ; dirTanque = UP = 0
	
	; -- ATUALIZA POSICAO ATUAL EM r0 --
	loadn r1, #84 		; r1 = auxiliar para verificar se chegou na primeira linha
	loadn r2, #40 		; r2 = auxiliar para subir linha
	; r0 JA TEM A POSICAO DO TANQUE !!!
	sub r0, r0, r2 		; pos = pos - 40 ---> sobe uma linha
	cmp r0, r1 			; Verifica se ja esta na primeira linha
	jle continuaTanque 	; Se ja estiver na primeira linha nao movimeta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r1, #'#' 				; r1 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posTanque ---> ponteiro para o caractere do mapa de tijolos na posicao que o tanque quer ir
	loadi r3, r4 				; r3 = caractere do mapa de tijolos na posicao que o tanque quer ir
	cmp r1, r3 					; Compara o caractere na posicao que o tanque quer ir com um tijolo
	jeq continuaTanque 			; Se for um tijolo o movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O tanque tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r4 = caractere na direita da posicao que o tanque quer ir
	cmp r1, r3 					; Compara o caractere a direita da posicao que o tanque quer ir 
	jeq continuaTanque 			; Se for um tijolo o movimento nao eh realizado
	
	; -- PASSOU TODOS OS TESTES --
	; r0 ja tem a posicao correta entao atualiza a posicao
	storei r7, r0
	
	jmp continuaTanque
;-------------------------------------------------------;
;                         RIGHT TANQUE
; Move um tanque para a direita
; <- r0 = posicao do tanque
RIGHT_tanque:
	; Carrega a posicao do tanque em r0
	loadi r0, r7
	
	; Atualiza a direcao
	loadn r1, #4
	storei r6, r1 ; dirTanque = RIGHT = 4
	
	; -- ATUALIZA POSICAO ATUAL EM r0 --
	loadn r1, #34 				; r1 = auxiliar para verificar se esta na ultima coluna
	loadn r2, #40 				; r2 = auxiliar para fazer mod
	; r0 JA TEM A POSICAO DO TANQUE COM RELACAO AOS TIJOLOS !!!
	inc r0 						; r0++ ---> Posicao vai um pra direita
	mod r3, r0, r2 				; r3 = pos % 40 ---> r3 = coluna
	cmp r3, r1 					; Verifica se ja esta na ultima coluna (coluna 34 por causa da margem)
	jgr continuaTanque 			; Se ja estiver na ultima coluna nao movimeta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r1, #'#'				; r1 = '#'  ---> auxiliar para comparar o caractere a direita da nova posicao com um tijolo
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posTanque ---> ponteiro para o caractere do mapa de tijolos na posicao que o tanque quer ir
	inc r4 						; r4++ ---> r4 vai um pra direita porque o tanque eh (2x2)
	loadi r3, r4 				; r3 = caractere do mapa de tijolos apontado por r4
	cmp r1, r3 					; Compara o caractere na posicao a direita que o tanque quer ir com um tijolo
	jeq continuaTanque 			; Se for um tijolo movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE ABAIXO!!! (O tanque tem dimensoes 2x2)
	add r4, r4, r2				; r4 = r4 + 40 ---> ponteiro para caractere desce uma linha
	loadi r3, r4 				; r3 = caractere do mapa de tijolos apontado por r4
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir com um tijolo
	jeq continuaTanque 			; Se for um tijolo o movimento nao eh realizado
	
	; -- PASSOU TODOS OS TESTES --
	; r0 ja tem a posicao correta entao atualiza a posicao
	storei r7, r0
	
	jmp continuaTanque
;-------------------------------------------------------;
;                         DOWN TANQUE
; Move um tanque para a baixo
; <- r0 = posicao do tanque
DOWN_tanque:
	; Carrega a posicao do tanque em r0
	loadi r0, r7
	
	; Atualiza a direcao
	loadn r1, #8
	storei r6, r1 ; dirTanque = DOWN = 8
	
	; -- ATUALIZA POSICAO ATUAL EM r0 --
	loadn r1, #1076		; r1 = auxiliar para verificar se chegou na ultima linha
	loadn r2, #40 		; r2 = auxiliar para descer linha no mapa de tijolos
	; r0 JA TEM A POSICAO DO TANQUE COM RELACAO AOS TIJOLOS !!!
	add r0, r0, r2 		; pos = pos + 40 ---> desce uma linha no mapa de tijolos
	cmp r0, r1 			; Verifica se ja esta na ultima linha
	jgr continuaTanque 	; Se ja estiver na ultima linha nao movimeta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r1, #'#' 				; r1 = '#'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um tijolo
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posTanque ---> ponteiro para o caractere do mapa de tijolos na posicao que o tanque quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o tanque eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o tanque quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o tanque quer ir com um tijolo
	jeq continuaTanque 			; Se for um tijolo o movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O tanque tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o tanque quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o tanque quer ir com um tijolo
	jeq continuaTanque 			; Se for um tijolo o movimento nao eh realizado
	
	; -- PASSOU TODOS OS TESTES --
	; r0 ja tem a posicao correta entao atualiza a posicao
	storei r7, r0
	
	jmp continuaTanque
;-------------------------------------------------------;
;                         LEFT TANQUE
; Move um tanque para a direita
; <- r0 = posicao do tanque
LEFT_tanque:	
	; Carrega a posicao do tanque em r0
	loadi r0, r7
	
	; Atualiza a direcao
	loadn r1, #12
	storei r6, r1 ; dirTanque = LEFT = 12
	
	; -- ATUALIZA POSICAO ATUAL EM r0 --
	loadn r1, #4 				; r1 = auxiliar para verificar se esta na primeira coluna
	loadn r2, #40 				; r2 = auxiliar para fazer mod
	; r0 JA TEM A POSICAO DO TANQUE COM RELACAO AOS TIJOLOS !!!
	dec r0 						; r0-- ---> Posicao vai um pra esquerda
	mod r3, r0, r2 				; r3 = pos % 40 ---> r3 = coluna
	cmp r3, r1 					; Verifica se ja esta na primeira coluna (coluna 4 por causa da margem)
	jle continuaTanque 			; Se ja estiver na primeira coluna nao movimeta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r1, #'#'				; r1 = '#'  ---> auxiliar para comparar o caractere da nova posicao com um tijolo
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posTanque ---> ponteiro para o caractere do mapa de tijolos na posicao que o tanque quer ir
	loadi r3, r4 				; r3 = caractere do mapa de tijolos apontado por r4
	cmp r1, r3 					; Compara o caractere na posicao que o tanque quer ir com um tijolo
	jeq continuaTanque 			; Se for um tijolo movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE ABAIXO!!! (O tanque tem dimensoes 2x2)
	add r4, r4, r2				; r4 = r4 + 40 ---> ponteiro para caractere desce uma linha
	loadi r3, r4 				; r3 = caractere abaixo da posicao que o tanque quer ir
	cmp r1, r3 					; Compara o caractere a abaixo da posicao que o tanque quer ir com um tijolo
	jeq continuaTanque 			; Se for um tijolo o movimento nao eh realizado
	
	; -- PASSOU TODOS OS TESTES --
	; r0 ja tem a posicao correta entao atualiza a posicao
	storei r7, r0
	
	jmp continuaTanque
;		     	FIM UP_RIGHT_DOWN_LEFT TANQUE
;-------------------------------------------------------;

;========================================================;
;                         TIRO
; <- r7 = endereco da posicao do tanque 
; <- r6 = endereco da direcao do tanque
; <- r5 = endereco da posicao do tiro
; <- r4 = endereco da direcao do tiro    
Tiro:
	; Empilha registradores para preservar seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	; Compara a direcao atual do tiro com NULO se nao for nulo, ja existe o tiro, portanto nao cria outro
	loadn r0, #1
	loadi r1, r4
	cmp r1, r0
	jne naoAtira
	
	loadi r0, r7 ; r0 = posicao do tanque
	loadi r1, r6 ; r1 = direcao do tanque
	; Atualiza direcao do tiro para direcao do tanque
	storei r4, r1 ; dirTiro = dirTanque
	
	loadn r2, #0
	cmp r1, r2
	jne not_tiro_UP
	loadn r2, #40
	sub r0, r0, r2 ; r0 = posicao do tanque - 40 (posicao do tiro)
	loadn r2, #84
	cmp r0, r2
	jle not_tiro_LEFT
	jmp fimTiro	
not_tiro_UP:
	loadn r2, #4
	cmp r1, r2
	jne not_tiro_RIGHT
	inc r0
	inc r0
	loadn r2, #35
	loadn r3, #40
	mod r3, r0, r3
	cmp r3, r2
	jgr not_tiro_LEFT	
	jmp fimTiro
not_tiro_RIGHT:
	loadn r2, #8
	cmp r1, r2
	jne not_tiro_DOWN
	loadn r2, #80
	add r0, r0, r2 ; r0 = posicao do tanque + 80 (posicao do tiro)
	loadn r2, #1116
	cmp r0, r2
	jgr not_tiro_LEFT
	jmp fimTiro	
not_tiro_DOWN:
	loadn r2, #12
	cmp r1, r2
	jne not_tiro_LEFT
	dec r0
	loadn r2, #4
	loadn r3, #40
	mod r3, r0, r3
	cmp r3, r2
	jle not_tiro_LEFT	
	jmp fimTiro
not_tiro_LEFT:

	; Se chegar nesse ponto algo de errado aconteceu, logo dirTiro = 1 = nulo
	loadn r1, #1
	storei r4, r1 ; dirTiro = NULO
	
fimTiro:
	storei r5, r0 ; Guarda a posicao atualizada do tiro
	
naoAtira:
	; Desempilha registradores
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;                       FIM TIRO 
;========================================================;

;========================================================;
;						APAGA TIRO
; <- r7 = endereco da posicao do tiro
; <- r6 = endereco da direcao do tiro
ApagaTiro:
	push r0
	push r1
	push r2
	
	; r0 = direcao do tiro
	loadi r0, r6
	; r1 = posicao do tiro
	loadi r1, r7
	
	; -> Verificacao do sentido do tiro
	loadn r2, #8				; Auxiliar para verificar o sentido do tiro
	mod r2, r0, r2 				; r2 = dirTiro % 8
	jz apagaTiroHorizontal		; Se dirTiro eh multiplo de 8 (UP ou DOWN) apaga o tiro no sentido horizontal
	
	; -> Apaga tiro na vertical
	; r1 JA TEM A POSICAO DO TIRO NA TELA
	loadn r0, #' ' 		; r0 = ' ' para apagar o tiro
	outchar r0, r1 		; Apaga o primeiro caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	
	loadn r3, #tijolosLinha0
	add r3, r3, r1
	loadi r4, r3
	cmp r4, r0
	cne quebra_Tijolo
	
	loadn r2, #40		; r2 = auxiliar para descer a linha
	add r1, r1, r2 		; r1 += 40 ---> posicao de impressao desce uma linha
	outchar r0, r1		; Apaga o segundo caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	
	add r3, r3, r2
	loadi r4, r3
	cmp r4, r0
	cne quebra_Tijolo
	
	jmp fim_apagaTiro
	
	; -> Apaga tiro na vertical
apagaTiroHorizontal:
	; r1 JA TEM A POSICAO DO TIRO NA TELA
	loadn r0, #' ' 		; r0 = ' ' para apagar o tiro
	outchar r0, r1 		; Apaga o primeiro caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	
	loadn r3, #tijolosLinha0
	add r3, r3, r1
	loadi r4, r3
	cmp r4, r0
	cne quebra_Tijolo
	
	inc r1				; r1++ ---> posicao de impressao vai para a direita
	outchar r0, r1		; Apaga o segundo caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	
	inc r3
	loadi r4, r3
	cmp r4, r0
	cne quebra_Tijolo
	
fim_apagaTiro:
	; desempilha registradores
	pop r2
	pop r1
	pop r0
	rts
;					  FIM APAGA TIRO
;========================================================;

;========================================================;
;						IMPRIME TIRO
; <- r7 = endereco da posicao do tiro
; <- r6 = endereco da direcao do tiro
ImprimeTiro:
	push r0
	push r1
	push r2
	push r3
	
	; r0 = direcao do tiro
	loadi r0, r6
	; r1 = posicao do tiro
	loadi r1, r7
	; r3 = ponteiro para os caracteres de tiro
	loadn r3, #tiroChars
	
	; -> Verificacao do sentido do tiro
	loadn r2, #8				; Auxiliar para verificar o sentido do tiro
	mod r2, r0, r2 				; r2 = dirTiro % 8
	jz imprimeTiroHorizontal		; Se dirTiro eh multiplo de 8 (UP ou DOWN) apaga o tiro no sentido horizontal
	
	; -> Apaga tiro na vertical
	; r1 JA TEM A POSICAO DO TIRO NA TELA
	add r3, r3, r0		; r3 = ponteiro para o primeiro caractere da direcao certa
	loadi r0, r3 		; r0 = primeiro caractere da direcao certa
	outchar r0, r1 		; imprime o primeiro caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	mov r0, r1
	call acertou_aguia
	loadn r2, #40		; r2 = auxiliar para descer a linha
	add r1, r1, r2 		; r1 += 40 ---> posicao de impressao desce uma linha
	inc r3				; r3 = ponteiro para o segundo caractere da direcao certa
	loadi r0, r3 		; r0 = segundo caractere da direcao certa
	outchar r0, r1		; imprime o segundo caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	mov r0, r1
	call acertou_aguia
	jmp fim_imprimeTiro
	
	; -> Apaga tiro na vertical
imprimeTiroHorizontal:
	; r1 JA TEM A POSICAO DO TIRO NA TELA
	add r3, r3, r0		; r3 = ponteiro para o primeiro caractere da direcao certa
	loadi r0, r3 		; r0 = primeiro caractere da direcao certa
	outchar r0, r1 		; imprime o primeiro caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	mov r0, r1
	call acertou_aguia
	inc r1  			; r1 ++ 40 ---> posicao de impressao vai um para a direita
	inc r3				; r3 = ponteiro para o segundo caractere da direcao certa
	loadi r0, r3 		; r0 = segundo caractere da direcao certa
	outchar r0, r1		; imprime o segundo caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	mov r0, r1
	call acertou_aguia
	
fim_imprimeTiro:
	; desempilha registradores
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;					  FIM IMPRIME TIRO
;========================================================;

;========================================================;
;					  ATUALIZA TIRO
AtualizaTiro:
	; Empilha registradores para preservar seus valores
	push r0
	push r1
	push r2
	push r5
	push r6
	push r7
	
	
	load r0, dirTiro1 ; r0 = dirTiro1
	loadn r1, #1
	cmp r0, r1
	jeq tiro1_nao_existe ; se a direcao do tiro for 1 ele nao existe
	
	loadn r7, #posTiro1
	loadn r6, #dirTiro1	
	call ApagaTiro
	
	load r5, posTanque2
	
	; -> Verificacao do sentido do tiro
	loadn r2, #8				; Auxiliar para verificar o sentido do tiro
	mod r2, r0, r2 				; r2 = dirTiro % 8
	cz MoveTiroUP_DOWN			; Se dirTiro eh multiplo de 8 (UP ou DOWN) move o tiro verticalmente
	
	loadn r2, #8				; Auxiliar para verificar o sentido do tiro
	mod r2, r0, r2 				; r2 = dirTiro % 8
	cnz MoveTiroRIGHT_LEFT		; Caso contrario move o tiro horizontalmente
	
	call compara_tiros
	
	load r0, dirTiro1 ; r0 = dirTiro1
	loadn r1, #1
	cmp r0, r1
	cne ImprimeTiro ; compara a direcao atualizada com nulo, se nao for nulo imprime o tiro
	
tiro1_nao_existe:
	
	load r0, dirTiro2 ; r0 = dirTiro2
	loadn r1, #1
	cmp r0, r1
	jeq tiro2_nao_existe ; se a direcao do tiro for 1 ele nao existe
	
	loadn r7, #posTiro2
	loadn r6, #dirTiro2	
	call ApagaTiro
	
	load r5, posTanque1
	
	; -> Verificacao do sentido do tiro
	loadn r2, #8				; Auxiliar para verificar o sentido do tiro
	mod r2, r0, r2 				; r2 = dirTiro % 8
	cz MoveTiroUP_DOWN			; Se dirTiro eh multiplo de 8 (UP ou DOWN) move o tiro verticalmente
	
	loadn r2, #8				; Auxiliar para verificar o sentido do tiro
	mod r2, r0, r2 				; r2 = dirTiro % 8
	cnz MoveTiroRIGHT_LEFT		; Caso contrario move o tiro horizontalmente
	
	call compara_tiros
	
	load r0, dirTiro2 ; r0 = dirTiro1
	loadn r1, #1
	cmp r0, r1
	cne ImprimeTiro ; compara a direcao atualizada com nulo, se nao for nulo imprime o tiro
	
tiro2_nao_existe:
	
	; Desempilha registradores
	pop r7
	pop r6
	pop r5
	pop r2
	pop r1
	pop r0	
	rts
;					FIM ATUALIZA TIRO
;========================================================;

;========================================================;
;					 MOVE TIRO UP OU DOWN
; <- r7 = endereco da posicao do tiro
; <- r6 = endereco da direcao do tiro
; <- r5 = posicao do tanque inimigo
MoveTiroUP_DOWN:
	; Empilha registradores para preservar seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	loadi r0, r7 ; r0 = posicao do tiro
	loadi r1, r6 ; r1 = direcao do tiro
	
	loadn r2, #40
	loadn r3, #0
	cmp r1, r3 ; compara a direcao com UP
	jne moveTiroDown
	sub r0, r0, r2 ; posTiro -= 40 ---> sobe uma linha	
	jmp continuaTiroUP_DOWN
moveTiroDown:
	add r0, r0, r2 ; posTiro += 40 ---> desce uma linha
continuaTiroUP_DOWN:

	loadn r1, #84
	cmp r0, r1
	cle acaba_tiro ; se for menor que 84 ja chegou na primeira linha entao o tiro acaba
	jle fim_moveTiroUP_Down
	
	loadn r1, #1116
	cmp r0, r1
	cgr acaba_tiro ; se for maior que 1116 ja chegou na ultima linha entao o tiro acaba
	jgr fim_moveTiroUP_Down

	storei r7, r0 ; Guarda a posicao do tiro atualizada	
	
	cmp r0, r5 				; compara a posicao do tiro com a posicao do tanque inimigo
	ceq acaba_tiro			
	ceq kill				; mata o tanque inimigo	
	
	inc r0
	cmp r0, r5 				; compara a posicao a direita do tiro com a posicao do tanque inimigo
	ceq acaba_tiro			
	ceq kill				; mata o tanque inimigo
	
	dec r0
	dec r0	
	cmp r0, r5 				; compara a posicao a esquerda do tiro com a posicao do tanque inimigo
	ceq acaba_tiro			
	ceq kill				; mata o tanque inimigo
	
	
fim_moveTiroUP_Down:		
	; Desempilha registradores
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0	
	rts

quebra_Tijolo:
	; GUARDA ' ' NA POSICAO r3 DA MEMORIA E IMPRIME ' ' NA POSICAO r1 DA TELA
	loadn r2, #' '
	storei r3, r2
acaba_tiro:
	loadn r2, #1
	storei r6, r2
	rts
;			      FIM MOVE TIRO UP OU DOWN
;========================================================;

;========================================================;
;			      		COMPARA TIROS
compara_tiros:
	; Empilha registradores para preservar seus valores
	push r1
	push r2
	push r6
	push r7
	
	load r1, dirTiro1
	loadn r2, #1
	cmp r1, r2
	jeq nao_comparaTiros
	
	load r1, dirTiro2
	loadn r2, #1
	cmp r1, r2
	jeq nao_comparaTiros
	
	
	load r1, posTiro1
	load r2, posTiro2
	cmp r1, r2
	loadn r7, #posTiro1
	loadn r6, #dirTiro1
	ceq ApagaTiro
	ceq acaba_tiro
	loadn r7, #posTiro2
	loadn r6, #dirTiro2
	ceq ApagaTiro
	ceq acaba_tiro

nao_comparaTiros:
	; Desempilha registradores
	pop r7
	pop r6
	pop r2
	pop r1
	rts
;			      	  FIM COMPARA TIROS
;========================================================;

;========================================================;
;			      			KILL
; <- r5 = posicao do tanque que morreu
kill:
	push r1
	push r2
	push r6
	
	loadn r2, #1
	load r1, posTanque1
	cmp r1, r5
	jne kill_tanque2
	
	loadn r6, #posTanqueAnt1
	call ApagaTanque
	loadn r1, #0
	store vidaTanque1, r1
	store posTanque1, r1
	jmp fim_kill
	
kill_tanque2:
	loadn r6, #posTanqueAnt2
	call ApagaTanque
	loadn r1, #0
	store vidaTanque2, r1
	store posTanque2, r1
	
fim_kill:
	pop r6
	pop r2
	pop r1
	rts

;========================================================;
;					 MOVE TIRO RIGHT OU LEFT
; <- r7 = endereco da posicao do tiro
; <- r6 = endereco da direcao do tiro
; <- r5 = posicao do tanque inimigo
MoveTiroRIGHT_LEFT:
	; Empilha registradores para preservar seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	loadi r0, r7 ; r0 = posicao do tiro
	loadi r1, r6 ; r1 = direcao do tiro
	
	loadn r2, #4
	cmp r1, r2 ; compara a direcao com RIGHT
	jne MoveTiroLeft
	inc r0 	; vai um pra direita	
	jmp continuaTiroRIGHT_LEFT
MoveTiroLeft:
	dec r0 	; vai um pra esquerda
continuaTiroRIGHT_LEFT:

	loadn r1, #4
	loadn r2, #40
	mod r2, r0, r2 ; r2 = pos % 40 -> coluna
	cmp r2, r1
	cle acaba_tiro ; se for menor que 4 ja chegou na primeira coluna entao o tiro acaba
	jle fim_moveTiroRIGHT_LEFT
	
	loadn r1, #35
	cmp r2, r1
	cgr acaba_tiro ; se for maior que 35 ja chegou na ultima coluna entao o tiro acaba
	jgr fim_moveTiroRIGHT_LEFT

	storei r7, r0 ; Guarda a posicao do tiro atualizada	
	
	cmp r0, r5 				; compara a posicao do tiro com a posicao do tanque inimigo
	ceq acaba_tiro			
	ceq kill				; mata o tanque inimigo	
	
	
	loadn r2, #40
	add r0, r0, r2
	cmp r0, r5 				; compara a posicao abaixo do tiro com a posicao do tanque inimigo
	ceq acaba_tiro			
	ceq kill				; mata o tanque inimigo
	
	sub r0, r0, r2
	sub r0, r0, r2
	cmp r0, r5 				; compara a posicao acima do tiro com a posicao do tanque inimigo
	ceq acaba_tiro			
	ceq kill				; mata o tanque inimigo
	
	
fim_moveTiroRIGHT_LEFT:		
	; Desempilha registradores
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0	
	rts
;			      FIM MOVE TIRO RIGHT OU LEFT
;========================================================;


jogador1Perdeu:
	loadn r1, #0
	loadn r2, #20
loop_jogador1perdeu:
	call Delay
	inc r1
	cmp r1, r2
	jle loop_jogador1perdeu
	call ApagaTela
	call ImprimeJogador2Ganhou
	call jogar_novamente
	jmp main
jogador2Perdeu:
	loadn r1, #0
	loadn r2, #20
loop_jogador2perdeu:
	call Delay
	inc r1
	cmp r1, r2
	jle loop_jogador2perdeu
	call ApagaTela
	call ImprimeJogador1Ganhou
	call jogar_novamente
	jmp main
	
jogar_novamente:
	loadn r2, #' '
loop_jogarNovamente:
	inchar r1
	cmp r2, r1
	jne loop_jogarNovamente
	rts
	
;========================================================;
;                     IMPRIME MARGEM      
ImprimeMargem:
	; Empilha registradores para preservar seus valores
	push r1
	push r2
	
	; Impressao da margem
	loadn r1, #margemLinha0
	loadn r2, #2048 ; cor = cinza
	call ImprimeTela
	
	; Desempilha registradores
	pop r2
	pop r1
	
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
	loadn r1, #tijolosLinhaStatic0
	loadn r2, #256 ; cor = Marrom
	call ImprimeTelaTijolos
	
	; Desempilha registradores
	pop r2
	pop r1
	
	rts
;                   FIM IMPRIME TIJOLOS      
;========================================================;

;========================================================;
;                     IMPRIME BATTLE CITY      
ImprimeBattleCity:
	; Empilha registradores para preservar seus valores
	push r1
	push r2
	
	; Impressao dos tijolos
	loadn r1, #battleCityLinha0
	loadn r2, #256 ; cor = Marrom
	call ImprimeTela
	
	; Desempilha registradores
	pop r2
	pop r1
	
	rts
;                   FIM IMPRIME BATTLE CITY      
;========================================================;
;========================================================;
;                     IMPRIME TELA INICIAL      
ImprimeTelaInicial:
	; Empilha registradores para preservar seus valores
	push r1
	push r2
	
	; Impressao dos tijolos
	loadn r1, #telaInicialLinha0
	loadn r2, #0 ; cor = BRANCO
	call ImprimeTela
	
	; Desempilha registradores
	pop r2
	pop r1
	
	rts
;                   FIM IMPRIME TELA INICIAL       
;========================================================;
;========================================================;
;                     IMPRIME TELA INICIAL      
ImprimeJogador2Ganhou:
	; Empilha registradores para preservar seus valores
	push r1
	push r2
	
	; Impressao dos tijolos
	loadn r1, #jogador2GanhouLinha0
	loadn r2, #0 ; cor = BRANCO
	call ImprimeTela
	
	; Desempilha registradores
	pop r2
	pop r1
	
	rts
;                   FIM IMPRIME TELA INICIAL       
;========================================================;
;========================================================;
;                     IMPRIME TELA INICIAL      
ImprimeJogador1Ganhou:
	; Empilha registradores para preservar seus valores
	push r1
	push r2
	
	; Impressao dos tijolos
	loadn r1, #jogador1GanhouLinha0
	loadn r2, #0 ; cor = BRANCO
	call ImprimeTela
	
	; Desempilha registradores
	pop r2
	pop r1
	
	rts
;                   FIM IMPRIME TELA INICIAL       
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

	loadn r0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn r3, #40  	; Incremento da posicao da tela!
	loadn r4, #1200 ; Limite da tela!
	
	
loop_imprimeTela:
	call ImprimeLinha
	add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = r0 + 40
	add r1, r1, r3  	; incrementa o ponteiro para o comeco da proxima linha na memoria r1 = r1 + 40
	cmp r0, r4			; Compara r0 com 1200
	jne loop_imprimeTela	; Enquanto r0 < 1200
	
	; Desempilha registradores
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;                   FIM IMPRIME TELA                   
;========================================================;
	
;========================================================;
;                     IMPRIME TELA      
;
; <- r1 = ponteiro para a primeira linha da tela 
; <- r2 = cor da tela           
ImprimeTelaTijolos:
	; Empilha registradores para proteger seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r7

	loadn r0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn r3, #40  	; Incremento da posicao da tela!
	loadn r4, #1200 ; Limite da tela!
	loadn r7, #tijolosLinha0
	
	
loop_imprimeTelaTijolos:
	call ImprimeLinhaTijolos
	add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = r0 + 40
	add r1, r1, r3  	; incrementa o ponteiro para o comeco da proxima linha na memoria r1 = r1 + 40
	add r7, r7, r3  	; incrementa o ponteiro para o comeco da proxima linha na memoria r1 = r1 + 40
	cmp r0, r4			; Compara r0 com 1200
	jne loop_imprimeTelaTijolos	; Enquanto r0 < 1200
	
	; Desempilha registradores
	pop r7
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;                   FIM IMPRIME TELA                   
;========================================================;
	
;========================================================;
;			    IMPRIME LINHA SEM ESPACO           
;     
; Imprime uma string de 39 caracteres e repete o último caractere
;
; <- r0 = Posicao de inicio da impressao
; <- r1 = Endereco da string que sera impressa
; <- r2 = Cor da impressao
ImprimeLinha:
	; Empilha registradores para proteger seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	
	; Carrega 38 em r4 para condicao de parada
	loadn r4, #38
	; r6 = contador
	loadn r5, #0
	; Carrega ' ' em r6 para saber se imprime o caractere ou nao
	loadn r6, #' '
	
loop_imprimeLinha:

	loadi r3, r1 ; carrega em r3 o valor do caractere apontado por r1
	cmp r3, r6	 ; compara r3 com ' ' se for igual -> não imprime o caractere
	jeq continua_imprimeLinha
	add r3, r2, r3 ; adiciona a cor da linha
	outchar r3, r0 ; imprime o caractere apontado por r1 na posição r0 com a cor r2
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
continua_imprimeLinha:
	; anda com a posicao da impressao
	inc r0
	
	cmp r5, r4 ; compara o contador com 38
	inc r5 ; contador ++
	
	jeq loop_imprimeLinha ; se for o caractere 39 (contador == 38), volta no loop sem andar no vetor
	
	; se nao for o caractere 39, anda no vetor
	inc r1
	
	cmp r5, r4 ; compara o contador com 38
	jel loop_imprimeLinha ; soh volta no loop se for menor ou igual a 38
	
	; Desempliha registradores
	pop r6
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
;			    IMPRIME LINHA SEM ESPACO           
;     
; Imprime uma string de 39 caracteres e repete o último caractere
;
; <- r0 = Posicao de inicio da impressao
; <- r1 = Endereco da string que sera impressa
; <- r2 = Cor da impressao
; <- r7 = Linha dos tijolos nao static
ImprimeLinhaTijolos:
	; Empilha registradores para proteger seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	; Carrega 38 em r4 para condicao de parada
	loadn r4, #38
	; r6 = contador
	loadn r5, #0
	; Carrega ' ' em r6 para saber se imprime o caractere ou nao
	loadn r6, #' '
	
loop_imprimeLinhaTijolos:

	loadi r3, r1 ; carrega em r3 o valor do caractere apontado por r1
	storei r7, r3
	cmp r3, r6	 ; compara r3 com ' ' se for igual -> não imprime o caractere
	jeq continua_imprimeLinhaTijolos
	add r3, r2, r3 ; adiciona a cor da linha
	outchar r3, r0 ; imprime o caractere apontado por r1 na posição r0 com a cor r2
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
continua_imprimeLinhaTijolos:
	; anda com a posicao da impressao
	inc r0
	
	cmp r5, r4 ; compara o contador com 38
	inc r5 ; contador ++
	
	jeq loop_imprimeLinhaTijolos ; se for o caractere 39 (contador == 38), volta no loop sem andar no vetor
	
	; se nao for o caractere 39, anda no vetor
	inc r1
	inc r7
	
	cmp r5, r4 ; compara o contador com 38
	jel loop_imprimeLinhaTijolos ; soh volta no loop se for menor ou igual a 38
	
	; Desempliha registradores
	pop r7
	pop r6
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
;						  DELAY
Delay:
	; Empilha registradores para nao perder seus valores
	push r0
	push r1
	
	loadn r0, #60
loop_delay1:
	loadn r1, #300
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

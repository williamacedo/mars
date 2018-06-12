.data
	msg1: .asciiz "Digite numero 1: "
	msg2: .asciiz "Digite numero 2: "
	result: .asciiz "\nResultado: "
.text
	# Ler Valor 1
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Receber Valor 1
	li $v0, 5
	syscall
	move $t1, $v0
	
	# Ler Valor 2
	li $v0, 4
	la $a0, msg2
	syscall
	
	# Recebe Valor 2
	li $v0, 5
	syscall
	move $t2, $v0
	
	# Multiplica Valor 1 e Valor 2 e armazena em t3
	mul $t3, $t1, $t2
	
	# Mostra o resultado
	li $v0, 4
	la $a0,result
	syscall
	
	# Printa o resultado na tela
	li $v0, 1
	move $a0, $t3
	syscall
	

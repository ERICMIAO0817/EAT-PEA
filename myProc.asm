DATA SEGMENT

    DELAYTIME DB 01H
    
    MODEFLAG DB 0

 	MODE1 DB 'START'
    MODE2 DB 'QUIT'
    TIPS3 DB 'MODE SELECT'

	STRING  DB  13,10,'Press Space to Start or Press R to return',13,10,'$'
	STRING1  DB  13,10,'Press ENTER to continue',13,10,'$'
	INPUT_MSG DB 13,10,'PLEASE INPUT THE NUMBER OF PEAS:','$'
	PAUSE_MSG DB 13,10,'Press P to pause.  Press C to continue.','$'
	NUM DW 40 DUP(?)
    
DATA ENDS


CODES SEGMENT
    ASSUME CS:CODES,DS:DATA

input proc near
	mov bx, 0
abc: 
	mov ah, 1
	int 21h
	cmp al, 0dh
	jz exitt
	and ax, 000fh
	xchg ax, bx
	mov cx,10
	mul cx
	add bx, ax
	jmp abc
exitt: 
	ret
input endp



START:
    MOV AX,DATA
    MOV DS,AX
;重开一个界面
	MOV ES, AX
	MOV BX, 0
	MOV AH, 0FH
	INT 10H
	PUSH AX
 	PUSH BX

	MOV AL, 03H
	MOV AH, 0
	INT 10H
	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'W'
	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'E'
 	INT 10H
	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'L'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'C'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
	MOV BH, 0
 	MOV AL, 'O'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'M'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'E'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, ' '
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'T'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'O'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, ' '
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'T'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'H'
 	INT 10H
 	CALL DELAY

 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'E'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, ' '
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'G'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'A'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'M'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'E'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, ' '
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'E'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'A'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'T'
 	INT 10H
 	CALL DELAY
 
  	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, ' '
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'P'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'E'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'A'
 	INT 10H
 	CALL DELAY
 
 	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, '!'
 	INT 10H
 	CALL DELAY
    
	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, '-'
 	INT 10H
 	CALL DELAY

	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, '-'
 	INT 10H
 	CALL DELAY

	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'B'
 	INT 10H
 	CALL DELAY
	
	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'y'
 	INT 10H
 	CALL DELAY

	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, ' '
 	INT 10H
 	CALL DELAY
	
	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'm'
 	INT 10H
 	CALL DELAY
	
	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'i'
 	INT 10H
 	CALL DELAY

	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'a'
 	INT 10H
 	CALL DELAY

	MOV AH, 0EH
 	MOV BH, 0
 	MOV AL, 'o'
 	INT 10H
 	CALL DELAY

	LEA dx,offset INPUT_MSG          
	MOV ah,09h
	int 21h
	call input
	mov NUM[0],bx

	MOV  AX,DATA
    MOV  DS,AX
    LEA  DX,STRING1
    MOV  AH,9
    INT  21H
    
	MOV ah,07H 
	INT 21H 
	cmp al,' '
	JNZ SELECT 

SELECT:   
 	MOV AX, DATA
 	MOV DS, AX
 	MOV ES, AX
 	MOV BX, 0
 	MOV AH, 0FH
 	INT 10H
 	PUSH AX
 	PUSH BX
;设置选择界面尺寸、模式
 	MOV AL, 03H
 	MOV AH, 0
 	INT 10H
	MOV BP, OFFSET TIPS3;指向字符串
 	MOV CX, 11D
 	MOV DH, 0D
 	MOV DL, 33;显示屏中央
 	MOV AL, 01
 	MOV BL, 0EH
 	MOV AH, 13H
 	INT 10H
 	CALL MODESELECT
 	CMP MODEFLAG, 0
 	JE GAME
 	JMP EXIT

 
 
GAME:
 	MOV ah,02h
	MOV bh,0
	MOV dl,0
	MOV dh,10
	INT 10h
	MOV AH, 0FH
 	INT 10H
;  PUSH AX
;  PUSH BX
;设置选择界面尺寸、模式
 	MOV AL, 03H
 	MOV AH, 0
 	INT 10H
	MOV cx,NUM[0]
setpoint:;循环打印豆子

	MOV ah,02H 
	MOV dl,'.' 
	INT 21H 
	LOOP setpoint 


    MOV  AX,DATA
    MOV  DS,AX
    LEA  DX,STRING
    MOV  AH,9
    INT  21H

	MOV  AX,DATA
    MOV  DS,AX
    LEA  DX,PAUSE_MSG
    MOV  AH,9
    INT  21H

	MOV ah,07H 
	INT 21H 
	cmp al,' '
	JNZ SELECT 
	


	MOV ah,02H  
	MOV bh,0 
	XOR dx,dx 
	INT 10H
	MOV ax,0B800H ;显示取缓存起始位置，打印到屏幕需要从这里开始。
	MOV ds,ax
	XOR bx,bx

re:	
	MOV cx,NUM[0]
eat_start:
	MOV si,0FFFFH
	MOV di,004FFH
	;代表在25×80的文本显示方式下，屏幕可有2000个字符位置，（si为源变址寄存器，si与di有自动增量和自动减量功能，用于变址很方便）
	nextone:
	sub si,1
	JNZ nextone

	MOV byte ptr [bx],' ';走过的位置置为空格
	MOV byte ptr [bx+2],'C';当前位置置为C

	xor ax,ax
	mov ah,01H
	int 16h
	cmp al,'p'
	JE PAUSE 
	cmp al,'r'
	JE SELECT

cont:
	MOV AH, 0ch ; 清除键盘缓冲区
	INT 21h
	CMP byte ptr [bx+4],'.'
	JNZ exit

	ADD bx,2
	LOOP eat_start 

exit:
	MOV AX, DATA
	MOV DS, AX
	MOV ES, AX
	MOV BX, 0  
	MOV AH, 0FH
	INT 10H
 
	PUSH AX
	PUSH BX
	MOV AL, 03H  
	MOV AH, 0
	INT 10H
  
  
	MOV AH, 0EH
	MOV BH, 0
	MOV AL, 'G'
	INT 10H
	CALL DELAY
  
	MOV AH, 0EH
	MOV BH, 0
	MOV AL, '0'
	INT 10H
	CALL DELAY
 
	MOV AH, 0EH
	MOV BH, 0
	MOV AL, '0'
	INT 10H
	CALL DELAY
 
	MOV AH, 0EH
	MOV BH, 0
	MOV AL, 'D'
	INT 10H
	CALL DELAY
 
	MOV AH, 0EH
	MOV BH, 0
	MOV AL, ' '
	INT 10H
	CALL DELAY
 
	MOV AH, 0EH
	MOV BH, 0
	MOV AL, 'B'
	INT 10H
	CALL DELAY
 
	MOV AH, 0EH
	MOV BH, 0
	MOV AL, 'Y'
	INT 10H
	CALL DELAY
 
	MOV AH, 0EH
	MOV BH, 0
	MOV AL, 'E'
	INT 10H
	CALL DELAY
 
	MOV AH, 0EH
	MOV BH, 0
	MOV AL, '!'
	INT 10H
	CALL DELAY

	MOV ax,4C00H
	INT 21H
 
PAUSE:
	MOV AH, 0
  	INT 16H
  	CMP Al,'c';右键
	JE cont
	cmp al,'r'
	JE SELECT
	JMP PAUSE

    
DELAY PROC   
	MOV AH, 0
	INT 1AH  ;时钟服务  
	MOV BX, DX
	MOV AX, 0
	MOV AL, DELAYTIME  ;延时长度
	ADD BX, AX
DELAYLOP: 
	MOV AH, 0
	INT 1AH
	CMP DX, BX;循环延时长度直到与BX相同
	JE DELAYNEXT
	JMP DELAYLOP
DELAYNEXT: 
	RET
DELAY ENDP   
    

MODESELECT PROC   
	MODESELECTLOP1: 
  		CMP MODEFLAG, 0FFH;判断选择的模式
  		JE MODESELECTLOP2   
  		MOV AH, 06H
  		MOV AL, 0
  		MOV BH, 07H
  		MOV CH, 12D
  		MOV CL, 0
  		MOV DH, 13D
  		MOV DL, 79
  		INT 10H
 
  		MOV AH, 13H
  		MOV BL, 9EH
  		MOV BH, 0
  		MOV BP, OFFSET MODE1
  		MOV AL, 1
  		MOV CX, 5
  		MOV DH, 3D
 		MOV DL, 32D
  		INT 10H
  
  		MOV AH, 13H
  		MOV BL, 08H
  		MOV BH, 0
  		MOV BP, OFFSET MODE2
  		MOV AL, 1
  		MOV CX, 4
  		MOV DH, 3D
  		MOV DL, 41D
  		INT 10H
  		JMP MODESELECTNEXT
	
	MODESELECTLOP2: 
		MOV AH, 06H
  		MOV AL, 0
  		MOV BH, 07H
  		MOV CH, 18D
  		MOV CL, 0
  		MOV DH, 19D
  		MOV DL, 79
  		INT 10H
  
  		MOV AH, 13H
  		MOV BL, 08H
  		MOV BH, 0
  		MOV BP, OFFSET MODE1
  		MOV AL, 1
 	 	MOV CX, 5
  		MOV DH, 3D
  		MOV DL, 32D
  		INT 10H
  
  		MOV AH, 13H
  		MOV BL, 9EH
  		MOV BH, 0
  		MOV BP, OFFSET MODE2
  		MOV AL, 1
  		MOV CX, 4
  		MOV DH, 3D
  		MOV DL, 41D
  		INT 10H

	MODESELECTNEXT:
	;读取键盘缓冲区
	 	MOV AH, 00
  		INT 16H
  		CMP AH,4BH;左键
  		JE MODESELECTRESET
  		CMP AH,4DH;右键
  		JE MODESELECTRESET
  		CMP AH,1CH
  		JNE MODESELECTNEXT
  	RET;回车返回
	MODESELECTRESET:
		NOT MODEFLAG;置位
  		JMP MODESELECTLOP1

MODESELECT ENDP

    JMP exit

CODES ENDS
    END START
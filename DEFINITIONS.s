  AREA MYDATA, DATA, READWRITE
	
GPIOA_BASE EQU 0x40010800
GPIOB_BASE EQU 0x40010C00
GPIOC_BASE EQU 0x40011000
	
GPIOA_CRH_OFFSET EQU GPIOA_BASE + 0x04
GPIOA_CRL_OFFSET EQU GPIOA_BASE + 0x00
GPIOA_ODR_OFFSET EQU GPIOA_BASE + 0x0C
GPIOA_IDR_OFFSET EQU GPIOA_BASE + 0x08

GPIOB_ODR_OFFSET EQU GPIOB_BASE + 0x0C
GPIOB_CRL_OFFSET EQU GPIOB_BASE + 0x00
GPIOB_CRH_OFFSET EQU GPIOB_BASE + 0x04
GPIOB_IDR_OFFSET EQU GPIOB_BASE + 0x08
	
GPIOA_BSRR_OFFSET EQU GPIOA_BASE + 0x10
GPIOB_BSRR_OFFSET EQU GPIOB_BASE + 0x10
GPIOC_BSRR_OFFSET EQU GPIOC_BASE + 0x10
	
GPIOC_CRH_OFFSET EQU GPIOC_BASE + 0x04
GPIOC_CRL_OFFSET EQU GPIOC_BASE + 0x00
GPIOC_IDR_OFFSET EQU GPIOC_BASE + 0x08
GPIOC_ODR_OFFSET EQU GPIOC_BASE + 0x0C	

INTERVAL EQU 0x566004
RCC_BASE EQU 0x40021000	
RCC_APB2ENR EQU RCC_BASE + 0x18	
	

;the following are pins connected from the TFT to our TFT
;RD = PB9		Read pin	--> to read from touch screen input 
;WR = PB8		Write pin	--> to write data/command to display
;RS = PB7		Command pin	--> to choose command or data to write
;CS = PB6		Chip Select	--> to enable the TFT,(active low)
;RST= PB15		Reset		--> to reset the TFT (active low)
;D0-7 = PA0-7	Data BUS	--> Put your command or data on this bus
;UP = B10
;DOWN= B12
;LEFT= C13
;RIGHT=C14

;just some color codes, 16-bit colors coded in RGB 565
BLACK	EQU   	0x0000
BLUE 	EQU  	0x001F
RED  	EQU  	0xF800
RED2   	EQU 	0x4000
GREEN 	EQU  	0x07E0
CYAN  	EQU  	0x07FF
MAGENTA EQU 	0xF81F
YELLOW	EQU  	0xFFE0
WHITE 	EQU  	0xFFFF
GREEN2 	EQU 	0x2FA4
CYAN2 	EQU  	0x07FF
ORANGE 	EQU  	0xFF82	
	

CURSOR_X	DCW		0x00  ;MENU CURSOR VARIABLES
CURSOR_Y	DCW		0x50


CACTUS1_X   DCW     0x125;DINO GAME VARIABLES
CACTUS1_Y   DCW     0x180
CACTUS2_X   DCW     0x245   
CACTUS2_Y   DCW     0x180
DINO_X      DCW     0X00
DINO_Y      DCW     0X00
MAX_HEIGHTT	DCW		0X00  ;COUNTER FOR EXITING THE INFINITE LOOP


SNAKEHEADX  DCW     50;SNAKE GAME VARIABLES
SNAKEHEADY  DCW     50 
SNAKE_TAILX  DCW     50
SNAKE_TAILY  DCW     60
SNAKE_DIRECTION DCW  0X00
TAIL_DIRECTION DCW 0X00
BIG        DCW 0X00

;DIRARR      DCB     0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA, 0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA , 0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA,0XA

	AREA NEWCODE, CODE, READONLY
DUMMYFUNC FUNCTION
	PUSH{LR}
	B DUMDUM
	LTORG
DUMDUM
	POP{PC}

	ENDFUNC

	END
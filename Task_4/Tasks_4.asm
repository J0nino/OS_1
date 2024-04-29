;Funkce sgn(int i), která vrací znaménko čísla i. Funkce vrací -1 pro záporné číslo, 0 pro nulu a 1 pro kladné číslo.

global sgn
global max2c
global min3us
global kladna_vsechna_cisla
global mocnina

section .text

sgn:
    mov eax, edi    ;nacteni parametru (hodnota co si uzivatel zadal)
    cmp eax, 0      ;porovnani zda je hodnota 0
    jl zaporne      ;pokud je hodnota v eax mensi nez 0 skoc na zaporne
    jg kladne       ;pokud je hodnota v eax vetsi nez 0 skoc na kladne
    mov eax, 0      ;pokud neni ani jedno z predchozich tak je to 0
    ret             ;navrat z funkce

kladne:
    mov eax, 1      ;do eax se ulozi 1
    ret

zaporne:
    mov eax, -1     ;do eax se ulozi -1
    ret    

  
;Napište funkci char max2c(char a, char b), která vrací největší hodnotu. Vyzkoušejte, že funkce funguje správně pro kladné i záporné argumenty, i jejich kombinaci.

max2c:
    mov al, dil    ;nacteni prvniho parametru do al (prvni pismeno, co uziv zadal)
    cmp al, sil    ;porovnani prvniho parametru s druhym (druhe pismeno, co uziv zadal)
    jl druhe_vetsi ;porovnani zda je druhy vetsi nez prvni
    ret            ;navrat z funkce         

druhe_vetsi:
    mov al, sil     ;do al se ulozi druhy parametr
    ret 

;Napište funkci unsigned short min3us(unsigned short a, unsigned short b, unsigned short c), která vrací nejmenší hodnotu ze zadaných parametrů. Vyzkoušejte, že funkce funguje správně i pro hodnoty větší než 32768.

min3us:
    mov ax, di      ;do ax se ulozi prvni parametr
    mov bx, si      ;do bx se ulozi druhy parametr
    mov cx, dx      ;do cx se ulozi treti parametr
    cmp ax, bx      ;porovnani prvniho a druheho parametru
    jbe prvni_mensi ;pokud je prvni mensi nez druhy skoc na prvni mensi
    mov ax, bx      ;jinak do ax uloz druhy parametr

prvni_mensi:
    cmp ax, cx      ;porovnani prvniho parametru s tretim
    jbe prvni_nejmensi  ;pokud je prvni mensi nez treti skoc na prvni nejmensi
    mov ax, cx       ;jinak do ax uloz treti parametr

prvni_nejmensi:
    ret


;Napište funkci int kladne(int a, int b, int c), která vrací 1, pokud jsou všechny argumenty kladné, jinak 0.

kladna_vsechna_cisla:
	mov eax, edi	;do eax se uloží 1. hodnota co je v edi( co uzivatel zadal)
	mov ebx, esi	;do ebx se uloží 2. hodnota co je v esi( co uzivatel zadal)
	mov ecx, edx	;do ecx se uloží 3. hodnota co je v edx( co uzivatel zadal)
	cmp eax, 0		;porovná se eax s 0
	jl zaporne_konec	; pokud je eax menší než 0, skočí se na konec
	cmp ebx, 0		;porovná se ebx s 0
	jl zaporne_konec	; pokud je ebx menší než 0, skočí se na konec
	cmp ecx, 0		;porovná se ecx s 0
	jl zaporne_konec	; pokud je ecx menší než 0, skočí se na konec
	mov eax, 1		; pokud všechny tři čísla jsou kladná, tak se do eax uloží 1
	ret	

zaporne_konec:
	mov eax, 0
	ret
    

;Napište funkci int mocnina(int n, unsigned int m) vracející mocninu nm.

mocnina:  ; Začátek funkce mocnina
    mov eax, 1  ; Nastaví eax na 1. eax bude použit pro ukládání výsledku umocňování
    mov ecx, 0  ; Nastaví ecx na 0. ecx bude použit jako počítadlo pro sledování, kolikrát byla operace umocňování provedena
    
umocneni:  ; Začátek cyklu umocňování
    cmp ecx, esi  ; Porovná počítadlo (ecx) s exponentem (esi)
    je konec  ; Pokud je počítadlo rovno exponentu, skočí na konec funkce
    imul eax, edi  ; Jinak vynásobí aktuální výsledek (eax) základem (edi)
    inc ecx  ; Zvýší počítadlo o 1
    jmp umocneni  ; Skočí zpět na začátek cyklu umocňování

konec:  ; Konec funkce mocnina
    ret  ; Vrátí výsledek, který je uložený v eax
	

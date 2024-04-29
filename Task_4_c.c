#include <stdio.h>

int sgn(int i);
char max2c(char a, char b);
unsigned short min3us(unsigned short a, unsigned short b, unsigned short c);
int kladna_vsechna_cisla(int a, int b, int c);
int mocnina(int n, unsigned int m);

int main()
{
    printf("1.ukol\n");
    printf("----------------\n");
    printf("%d\n", sgn(0));
    printf("%d\n", sgn(5));
    printf("%d\n", sgn(-5));
    printf("----------------\n");

    printf("2.ukol\n");
    printf("----------------\n");
    printf("%c\n", max2c('a', 'b'));
    printf("%c\n", max2c('e', 'a'));
    printf("%c\n", max2c('c', 'g'));
    printf("----------------\n");

    printf("3.ukol\n");
    printf("----------------\n");
    printf("%d\n", min3us(1, 2, 3));
    printf("%d\n", min3us(3, 2, 1));
    printf("%d\n", min3us(33000, 36000, 45025));
    printf("----------------\n");

    printf("4.ukol\n");
    printf("----------------\n");
    printf("%d\n", kladna_vsechna_cisla(1, 2, 3));
    printf("%d\n", kladna_vsechna_cisla(3, 2, 1));
    printf("%d\n", kladna_vsechna_cisla(-1, -2, -3));
    printf("%d\n", kladna_vsechna_cisla(-3, -2, -1));
    printf("%d\n", kladna_vsechna_cisla(1, -2, 3));
    printf("%d\n", kladna_vsechna_cisla(-3, 2, -1));
    printf("----------------\n");

    printf("5.ukol\n");
    printf("----------------\n");
    printf("%d\n", mocnina(2, 3));
    printf("%d\n", mocnina(5, 10));
    printf("%d\n", mocnina(2, 0));
    printf("%d\n", mocnina(0, 2));
    printf("%d\n", mocnina(0, 0));
    printf("%d\n", mocnina(1, 1));
    printf("----------------\n");

    return 0;
}
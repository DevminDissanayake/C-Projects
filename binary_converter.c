#include <stdio.h> 	
#include <stdlib.h> 	
#include <string.h>

int binaryconvert(int dec){
    if(dec == 0){
       return 0;
    }else {
        return (dec % 2+ 10*binaryconvert(dec/2));
    }
}

int main(){
    int number;
    char* num=  (getenv("QUERY_STRING") );
    sscanf(num,"TEST=%d",&number);
    int binary_number= binaryconvert(number);
    printf("Content-Type:text/html\n\n");
    printf("<html>");
    printf("<body><center> Binary Number: ");
    printf("%d",binary_number);
    printf("</center></body>");
    printf("</html>");
    return 0;
}

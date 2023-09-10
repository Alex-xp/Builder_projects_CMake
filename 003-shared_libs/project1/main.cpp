#include <iostream>

#include "static_lib1/main_lib.h"
#include "shared_lib1/main_sh_lib.h"

using namespace std;

int main(int argc, char **argv){
    
    const char* str1 = "HELLO WORLD !!!";

    cout << str1 << endl;

    printHello();

    printHello_SH();



    return 0;
}

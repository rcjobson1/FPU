#include <iostream>
#include <string>
#include <stdlib.h>
#include <stdio.h>


using namespace std;


int convert_float(float number){
  int* bp;
  bp = (int*)&number; //treats the address of float as an int pointer
  int bit_value = *bp;

  return bit_value;

}

float convert_hex(string hex){
  unsigned long int hex_converted = strtoul(hex.c_str(), NULL, 16); // convert hex string into integer form
  float* fp = (float*)&hex_converted; // create a float pointer with the address of the converted hex
  float converted = *fp; // recast the int as a float

  return converted;
}

int main(int argc, char const *argv[]) {

  if(argc < 3 || argc > 4){
    cout << "usage: ngen <number> <file>" << endl;
    return 0;
  }

  string op;

  op = argv[1];

  if(op == "1"){
    float input_num = strtof(argv[2], NULL); // covnert input to float
    printf("%f\t%x\n",input_num,convert_float(input_num));
  }

  else if(op == "2"){
    string input_hex = argv[2]; // covnert input to float
    printf("%s\t%f\n",input_hex.c_str(),convert_hex(input_hex));
  }

  else if(op == "3"){
    
  }




  return 0;
}

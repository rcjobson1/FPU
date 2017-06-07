#include <iostream>
#include <string>
#include <stdlib.h>
#include <stdio.h>
#include <fstream>

#define MAX_INT 2147483647



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
  float converted = *fp; // cast the int as a float

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
    return 0;
  }

  else if(op == "2"){
    string input_hex = argv[2]; // covnert input to float
    printf("%s\t%f\n",input_hex.c_str(),convert_hex(input_hex));
    return 0;
  }

  else if(op == "3"){
    if(argc!= 4){
      cout << "insuffiecient arguments" << endl;
      return 1;
    }
    int num_values = atoi(argv[2]);
    string filename = argv[3];
    ofstream file;
    file.open(filename.c_str());

    for (int i = 0; i < num_values; i++) {
      int random = rand() - RAND_MAX/2;

      float to_float = *(float*)&random;
      char hex[10];
      sprintf(hex, "%8x", convert_float(to_float));

      file << to_float << "\t" << random << "\t" << hex << endl;

    }


    file.close();
    return 0;

  }


  else if(op == "4"){
    int num_values = atoi(argv[2]);
    cout << "Printing random values between 0 and " << RAND_MAX << endl;
    for (int i = 0; i < num_values; i++) {
      int random = rand() - RAND_MAX/2;

      float to_float = *(float*)&random;
      char hex[10];
      sprintf(hex, "%8x", convert_float(to_float));

      cout << to_float << "\t" << random << "\t" << hex << endl;

    }
    return 0;

  }




  return 0;
}

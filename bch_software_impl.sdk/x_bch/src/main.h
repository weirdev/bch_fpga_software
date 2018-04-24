#pragma once

#include <vector>
#include <string>
#include <random>
#include <iostream>
#include <iterator>

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "ecclib.h"
#include "BinaryMatrix.h"
#include "GFMatrix.h"
#include "GaloisField.h"

int main();
void testdummyencode();
std::vector<unsigned char> randomdata(int len);
void comparearrays(unsigned char* v1, unsigned char* v2, unsigned int size);
void testload_matrix();
void test_matrix_encode();
void testload_gfmatrix();
void test_BCH_Encode();
void test_BCH_Decode(bool small=true);
unsigned char* standardnoise(unsigned char* v, int size);

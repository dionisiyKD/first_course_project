#ifndef ENVIRONMENT_H
#define ENVIRONMENT_H

#include "human.h"

class environment {
    int n;         // Number of humans
    human* arr;    // Array of humans
    int rounds;    // Number of rounds
public:
    environment();
    ~environment();
    void output_arr();
    void set_trust_flags();

    void game();
};

#endif // ENVIRONMENT_H

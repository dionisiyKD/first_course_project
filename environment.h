#ifndef ENVIRONMENT_H
#define ENVIRONMENT_H

#include "human.h"
#include "list.h"

class environment  {
    int n;         // Number of humans
    list arr;      // Array of humans
    int rounds;    // Number of rounds
public:
    environment();
    ~environment();

    void create_naive(int amount);
    void create_distrustful(int amount);
    void create_simulator(int amount);
    void create_Tricky(int amount);
    void create_detective(int amount);
    void create_vindictive(int amount);
    void create_random(int amount);
    void create_Persistent(int amount);
    void create_forgiving(int amount);

    void remove_element_from_tail(int amount);
    void reset_money();

    void output_arr();
    void output_types();
    void min_to_max();
    void game();
};

#endif // ENVIRONMENT_H

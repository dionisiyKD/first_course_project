#ifndef ENVIRONMENT_H
#define ENVIRONMENT_H

#include "human.h"
#include "list.h"

class environment {
    int n;                   // Number of humans
    list arr;                // Array of humans
    int rounds;              // Number of rounds
    int amount_of_deletion;  // Amount of deletion after round
    bool show_every_round;   // Will it show results of every round
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

    int  get_number();
    int  get_rounds();
    void set_rounds(int a);
    int  get_amount_of_deletion();
    void set_amount_of_deletion(int a);
    bool get_flag();
    void set_flag(bool a);

    void remove_element_from_tail(int amount);
    void reset_money();

    void output_arr();
    void output_types();

    void min_to_max();
    void game();

};

#endif // ENVIRONMENT_H

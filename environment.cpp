#include "iostream"
#include "environment.h"
#include "human.h"
using namespace std;

environment::environment() {
    n = 0;        //cin >> n;
    rounds = 5;   //cin >> rounds;
}
environment::~environment() {}

void environment::create_naive(int amount) {
    n += amount;
    for (int i = 0; i < amount; i++) {
        naive* a = new naive;
        arr.add_head(a);
    }
}
void environment::create_distrustful(int amount) {
    n += amount;
    for (int i = 0; i < amount; i++) {
        distrustful* a = new distrustful;
        arr.add_head(a);
    }
}
void environment::create_simulator(int amount) {
    n += amount;
    for (int i = 0; i < amount; i++) {
        simulator* a = new simulator;
        arr.add_head(a);
    }
}
void environment::create_Tricky(int amount) {
    n += amount;
    for (int i = 0; i < amount; i++) {
        Tricky* a = new Tricky;
        arr.add_head(a);
    }
}
void environment::create_detective(int amount) {
    n += amount;
    for (int i = 0; i < amount; i++) {
        detective* a = new detective;
        arr.add_head(a);
    }
}
void environment::create_vindictive(int amount) {
    n += amount;
    for (int i = 0; i < amount; i++) {
        vindictive* a = new vindictive;
        arr.add_head(a);
    }
}
void environment::create_random(int amount) {
    n += amount;
    for (int i = 0; i < amount; i++) {
        random* a = new random;
        arr.add_head(a);
    }
}
void environment::create_Persistent(int amount) {
    n += amount;
    for (int i = 0; i < amount; i++) {
        Persistent* a = new Persistent;
        arr.add_head(a);
    }
}
void environment::create_forgiving(int amount) {
    n += amount;
    for (int i = 0; i < amount; i++) {
        forgiving* a = new forgiving;
        arr.add_head(a);
    }
}

void environment::output_arr() {
    // Output all people money
    arr.print_from_head();
}
void environment::game() {
    // Game / Counting money
    for (int r = 0; r < rounds; r++)          // rounds
        for (int i = 0; i < n; i++)           // Each human
            for (int j = i + 1; j < n; j++) { // Plays with the remaining one
                bool trust_a = arr.get_data(i)->will_i_trust();
                bool trust_b = arr.get_data(j)->will_i_trust();
                if (trust_a && trust_b) {
                    arr.get_data(i)->incr_money(2);
                    arr.get_data(j)->incr_money(2);
                    arr.get_data(i)->after_round(trust_b);
                    arr.get_data(j)->after_round(trust_a);
                    continue;
                }
                if (trust_a && !trust_b) {
                    arr.get_data(i)->decr_money(1);
                    arr.get_data(j)->incr_money(3);
                    arr.get_data(i)->after_round(trust_b);
                    arr.get_data(j)->after_round(trust_a);
                    continue;
                }
                if (!trust_a && trust_b) {
                    arr.get_data(i)->incr_money(3);
                    arr.get_data(j)->decr_money(1);
                    arr.get_data(i)->after_round(trust_b);
                    arr.get_data(j)->after_round(trust_a);
                    continue;
                }
                if (!trust_a && !trust_b) {
                    arr.get_data(i)->after_round(trust_b);
                    arr.get_data(j)->after_round(trust_a);
                    continue;
                }
            }
}

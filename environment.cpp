#include "iostream"
#include "environment.h"
#include "human.h"
#include "my_exception.h"
#include "list.h"
using  std::cout;
using  std::endl;
environment::environment() {
    n = 0;
    rounds = 1;
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

list* environment::get_arr(){
    return &arr;
}

int environment::get_number(){
    return n;
}
int  environment::get_rounds(){
    return rounds;
}
void environment::set_rounds(int a){
    rounds = a;
}
int  environment::get_amount_of_deletion(){
    return amount_of_deletion;
}
void environment::set_amount_of_deletion(int a){
    amount_of_deletion = a;
}

void environment::remove_element_from_tail(int amount) {
    for (int i = 0; i < amount; i++, n--)
        arr.remove(n);
}
void environment::reset_money() {
    for (int i = 0; i < n; i++)
        arr.get_data(i)->set_money(0);
}
void environment::output_arr() {
    arr.print_from_head();
}
void environment::output_types() {
    cout << "\ntypes\n\n";
    for (int i = 0; i < n; i++) {
        switch (arr.get_data(i)->get_type()) {
        case 1:
            cout << "naive" << endl;
            break;
        case 2:
            cout << "distrustful" << endl;
            break;
        case 3:
            cout << "simulator" << endl;
            break;
        case 4:
            cout << "Tricky" << endl;
            break;
        case 5:
            cout << "detective" << endl;
            break;
        case 6:
            cout << "vindictive" << endl;
            break;
        case 7:
            cout << "random" << endl;
            break;
        case 8:
            cout << "Persistent" << endl;
            break;
        case 9:
            cout << "forgiving" << endl;
            break;
        default:
            break;
        }
    }
    cout << endl;

}
void environment::min_to_max() {
    int max_type = arr.get_data(0)->get_type();
    remove_element_from_tail(amount_of_deletion);
    switch (max_type) {
    case 1:
        create_naive(amount_of_deletion);
        break;
    case 2:
        create_distrustful(amount_of_deletion);
        break;
    case 3:
        create_simulator(amount_of_deletion);
        break;
    case 4:
        create_Tricky(amount_of_deletion);
        break;
    case 5:
        create_detective(amount_of_deletion);
        break;
    case 6:
        create_vindictive(amount_of_deletion);
        break;
    case 7:
        create_random(amount_of_deletion);
        break;
    case 8:
        create_Persistent(amount_of_deletion);
        break;
    case 9:
        create_forgiving(amount_of_deletion);
        break;
    default:
        break;
    }

}
void environment::game() {
        reset_money();
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
        arr.insertionSort();
        output_types();
        output_arr();
        min_to_max();
    }


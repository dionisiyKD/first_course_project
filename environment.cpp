#include "iostream"
#include "environment.h"
using namespace std;

environment::environment() {
    n = 5;        //cin >> n;
    rounds = 2;   //cin >> rounds;
    arr = new human[n];
}
environment::~environment(){ delete[] arr; }

void environment::output_arr() {
    // Output all people money
    cout << "Array of ints: ";
    for (int i = 0; i < n; i++)
        cout << arr[i].get_money() << " ";
    cout << endl;
}
void environment::set_trust_flags() {
    //bool flag; // Flag of trust, will he trust or not
    for (int i = 0; i < n; i++) {
        //cin >> flag;
        arr[i].set_trust(1); // Temporarily input a constant
    }
}
void environment::game() {
    // Game / Counting money
    for (int r = 0; r < rounds; r++)         // rounds
        for (int i = 0; i < n; i++)          // Each human
            for (int j = i + 1; j < n; j++)  // Plays with the remaining one
            {
                bool trust_a = arr[i].get_trust();
                bool trust_b = arr[j].get_trust();
                if (trust_a && trust_b)
                {
                    arr[i].incr_money_by2();
                    arr[j].incr_money_by2();
                    continue;
                }
                if (trust_a && !trust_b) {
                    arr[i].decr_money_by1();
                    arr[j].incr_money_by3();
                    continue;
                }
                if (!trust_a && trust_b) {
                    arr[i].incr_money_by3();
                    arr[j].decr_money_by1();
                    continue;
                }
                if (!trust_a && !trust_b)
                    continue;
            }
}

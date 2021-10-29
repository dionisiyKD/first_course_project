#include "iostream"
#include "environment.h"

#include "mainwindow.h"
#include "ui_mainwindow.h"

#include "QLineEdit"
#include "QMainWindow"
using namespace std;

environment::environment() {
    //cin >> n;
    n = 5;
    //cin >> rounds;
    rounds = 2;
    arr = new human[n];
}
environment::~environment(){ delete[] arr; }

void environment::output_arr() {
    cout << "Array of ints: ";
    for (int i = 0; i < n; i++)
        cout << arr[i].get_money() << " ";
    cout << endl;
}
void environment::set_trust_flags() {
    //bool flag;
    for (int i = 0; i < n; i++) {
        //cin >> flag;
        arr[i].set_trust(1);
    }
    cout << endl;
}
void environment::game() {
    // 1 && 1
    // 	+2 +2
    //
    // 1 && 0
    // 	-1 +3
    //
    // 0 && 1
    // 	+3 -1
    //
    // 0 && 0
    // 	+0 +0
    //
    // Game, counting moneys, 1 round
    for (int r = 0; r < rounds; r++)
        for (int i = 0; i < n; i++)
            for (int j = i + 1; j < n; j++)
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

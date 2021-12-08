#include <iostream>
#include <QList>
#include <QVariant>
#include "start_btn.h"
#include "environment.h"
#include "my_exception.h"
#include "list.h"
using std::cout;


Start_btn::Start_btn(QObject *parent) : QObject(parent)
{

}

QList<int> Start_btn::btn_clicked(int n1, int n2, int n3, int n4, int n5, int n6, int n7, int n8, int n9, int n10, int n11)
{
    int res_count = n1 + n2 +n3 +n4 + n5 +n6 +n7 + n8 +n9;
    cout << res_count<< "\n";
    environment A;
    list* Glist;
    QList<int> res;
    A.create_vindictive(n1);
    A.create_naive(n2);
    A.create_Persistent(n3);
    A.create_detective(n4);
    A.create_Tricky(n5);
    A.create_forgiving(n6);
    A.create_simulator(n7);
    A.create_distrustful(n8);
    A.create_random(n9);
    A.set_rounds(n10);
    A.set_amount_of_deletion(n11);
    A.game();
    Glist = A.get_arr();
    for (int i = 0; i < res_count; i++){
        res << Glist->get_data(i)->get_type() ;
        res << Glist->get_data(i)->get_money();
    }
    cout << "Totel result:\n\n";

    A.output_types();
    le = res;
    return res;
}

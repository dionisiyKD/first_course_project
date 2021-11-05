#include "start_btn.h"
#include "environment.h"

Start_btn::Start_btn(QObject *parent) : QObject(parent)
{

}

void Start_btn::btn_clicked(int n1, int n2, int n3, int n4, int n5, int n6, int n7, int n8, int n9)
{
    environment A;
    A.create_vindictive(n1);
    A.create_naive(n2);
    A.create_Persistent(n3);
    A.create_detective(n4);
    A.create_Tricky(n5);
    A.create_forgiving(n6);
    A.create_simulator(n7);
    A.create_distrustful(n8);
    A.create_random(n9);

    A.game();
    A.output_types();
    A.output_arr();
}

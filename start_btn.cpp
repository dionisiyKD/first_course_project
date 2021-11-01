#include "start_btn.h"
#include "environment.h"

Start_btn::Start_btn(QObject *parent) : QObject(parent)
{

}

void Start_btn::btn_clicked()
{
    environment A;
    A.create_distrustful(15);
    A.create_naive(10);

    A.game();
    A.output_arr();
}

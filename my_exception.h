#ifndef MY_EXCEPTION_H
#define MY_EXCEPTION_H
#include <QMessageBox>

class my_exception
{
public:

    my_exception(int error_code)
    {
        switch (error_code) {
        case 1: QMessageBox::information(0,"Попередження", "Гру не може бути запущено.\n Введіть, будь-ласка, кількість гравців"); break;
        case 2: QMessageBox::information(0,"Попередження", "Гравців не може бути менше двох, \n спробуйте ввести інше значення."); break;
        case 3: QMessageBox::information(0,"Попередження", "exam_4"); break;
        default: break;
        }
    }
};


#endif // MY_EXCEPTION_H

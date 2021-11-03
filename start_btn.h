#ifndef START_BTN_H
#define START_BTN_H

#include <QObject>

class Start_btn : public QObject
{
    Q_OBJECT
public:
    explicit Start_btn(QObject *parent = nullptr);

signals:

public slots:
    void btn_clicked(int, int, int, int, int, int, int, int, int);
};

#endif // START_BTN_H

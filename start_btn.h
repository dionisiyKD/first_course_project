#ifndef START_BTN_H
#define START_BTN_H

#include <QObject>
#include "list.h"
#include "human.h"
class Start_btn : public QObject
{
    Q_OBJECT
public:
    explicit Start_btn(QObject *parent = nullptr);
    void setList(const QList<int> &v) {le = v;}

private:
    QList<int> le;

signals:

public slots:
    QList<int> btn_clicked(int, int, int, int, int, int, int, int, int, int, int);
};

#endif // START_BTN_H

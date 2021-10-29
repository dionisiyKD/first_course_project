#ifndef HUMAN_H
#define HUMAN_H

class human {
    int money;  // Amount of money
    bool trust; // Flag of trust
public:
    human();
    void incr_money_by2();
    void incr_money_by3();
    void decr_money_by1();
    int get_money();

    void set_trust(bool a);
    bool get_trust();
};

#endif // HUMAN_H

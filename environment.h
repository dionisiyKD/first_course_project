#ifndef ENVIRONMENT_H
#define ENVIRONMENT_H

class human {
    int money;
    bool trust;
public:
    human() { money = 0; trust = 1; }
    void incr_money_by2() { money += 2; }
    void incr_money_by3() { money += 3; }
    void decr_money_by1() { money -= 1; }
    int get_money() { return money; }

    bool get_trust() { return trust; }
    void set_trust(bool a) { trust = a; }
};

class environment {
    int n;
    human* arr;
    int rounds;
public:
    environment();
    ~environment();
    void output_arr();
    void set_trust_flags();

    void game();
};

#endif // ENVIRONMENT_H

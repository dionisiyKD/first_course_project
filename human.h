#ifndef HUMAN_H
#define HUMAN_H

class human {
protected:
    int money;  // Amount of money
    bool trust; // Flag of trust
public:
    human();
    void incr_money(int a);
    void decr_money(int a);

    void set_money(int a);
    int get_money();
    void set_trust(bool a);
    bool get_trust();

    virtual bool will_i_trust() = 0;
    virtual void after_round(bool enemy_choice);
};

// Always trust
class naive : public human {
public:
    naive();
    virtual bool will_i_trust();
};

// Always decieve
class distrustful : public human {
public:
    distrustful();
    virtual bool will_i_trust();
};

// Copies the last enemy choice
class simulator : public human {
    bool last_enemy_choice;
public:
    simulator();
    bool get_last_enemy_choice();
    void set_last_enemy_choice(bool a);

    virtual bool will_i_trust();
    virtual void after_round(bool enemy_choice);
};

// Like a simulator, but vice versa
class Tricky : public human {
    bool last_enemy_choice;
public:
    Tricky();
    bool get_last_enemy_choice();
    void set_last_enemy_choice(bool a);

    virtual bool will_i_trust();
    virtual void after_round(bool enemy_choice);
};

// First four rounds: trust deceive trust trust, then if you
//    - Never deceive:  acts like simulator
//    - Deceive:        acts like a distrustful
class detective : public human {
    int number_of_rounds;
    bool was_deceived;
    bool last_enemy_choice;
public:
    detective();

    int get_number_of_rounds();
    void set_number_of_rounds(int a);
    bool get_was_deceived();
    void set_was_deceived(bool a);
    bool get_last_enemy_choice();
    void set_last_enemy_choice(bool a);

    virtual bool will_i_trust();
    virtual void after_round(bool enemy_choice);
};

// Trusts until the first deceive
class vindictive : public human {
    bool was_deceived;
public:
    vindictive();
    bool get_was_deceived();
    void set_was_deceived(bool a);

    virtual bool will_i_trust();
    virtual void after_round(bool enemy_choice);
};

// Random choice
class random : public human {
public:
    random();
    virtual bool will_i_trust();
};

// Always alternates: trust - deceive - trust - deceive
class Persistent : public human {
    bool last_mine_choice;
public:
    Persistent();
    bool get_last_mine_choice();
    void set_last_mine_choice(bool a);
    virtual bool will_i_trust();
};

// Acts like the vindictive, but forgives the first deceive
class forgiving : public human {
    int how_many_times_was_deceived;
    bool will_i_deceive;
public:
    forgiving();
    int get_how_many_times_was_deceived();
    void set_how_many_times_was_deceived(int a);
    bool get_will_i_deceive();
    void set_will_i_deceive(bool a);

    virtual bool will_i_trust();
    virtual void after_round(bool enemy_choice);
};























#endif // HUMAN_H

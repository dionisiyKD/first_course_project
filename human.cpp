#include <random>
#include <ctime>

#include "iostream"
#include "human.h"
using namespace std;

// From the start everyone have 0 money, and trust everyone
human::human() { money = 0; trust = 1; }
void human::incr_money(int a) { money += a; }
void human::decr_money(int a) { money -= a; }
void human::set_money(int a)  { money = a; }
int  human::get_money()       { return money; }
void human::set_trust(bool a) { trust = a; }
bool human::get_trust()       { return trust; }
void human::after_round(bool enemy_choice) {
    return;
}



naive::naive() {
    trust = 1;
}
bool naive::will_i_trust() {
    return trust;
}

distrustful::distrustful() {
    trust = 0;
}
bool distrustful::will_i_trust() {
    return trust;
}

simulator::simulator() {
    // First time he trust
    last_enemy_choice = 1;
}
bool simulator::get_last_enemy_choice() {
    return last_enemy_choice;
}
void simulator::set_last_enemy_choice(bool a) {
    last_enemy_choice = a;
}
bool simulator::will_i_trust() {
    // By default trust, then copy last enemy choice
    return last_enemy_choice;
}
void simulator::after_round(bool enemy_choice) {
    last_enemy_choice = enemy_choice;
}

Tricky::Tricky() {
    // First time he trust
    last_enemy_choice = 0;
}
bool Tricky::get_last_enemy_choice() {
    return last_enemy_choice;
}
void Tricky::set_last_enemy_choice(bool a) {
    last_enemy_choice = a;
}
bool Tricky::will_i_trust() {
    // By default trust, then copy opposite last enemy choice
    return !last_enemy_choice;
}
void Tricky::after_round(bool enemy_choice) {
    last_enemy_choice = enemy_choice;
}

detective::detective() {
    number_of_rounds = 1;
    was_deceived = 0;
    last_enemy_choice = 0;
}
int detective::get_number_of_rounds() {
    return number_of_rounds;
}
void detective::set_number_of_rounds(int a) {
    number_of_rounds = a;
}
bool detective::get_was_deceived() {
    return was_deceived;
}
void detective::set_was_deceived(bool a) {
    was_deceived = a;
}
bool detective::get_last_enemy_choice() {
    return last_enemy_choice;
}
void detective::set_last_enemy_choice(bool a) {
    last_enemy_choice = a;
}
bool detective::will_i_trust() {
    if ((number_of_rounds == 1) || (number_of_rounds == 3) || (number_of_rounds == 4))
        return true;
    else
        if (number_of_rounds == 2)
            return false;



    if (was_deceived)
        return false;
    else
        return last_enemy_choice;
}
void detective::after_round(bool enemy_choice) {
    last_enemy_choice = enemy_choice;
    number_of_rounds++;
    if (number_of_rounds < 4)
        if (!enemy_choice)
            was_deceived = true;
}

vindictive::vindictive() {
    was_deceived = 0;
}
bool vindictive::get_was_deceived() {
    return was_deceived;
}
void vindictive::set_was_deceived(bool a) {
    was_deceived = a;
}
bool vindictive::will_i_trust() {
    if (was_deceived)
        return false;
    else
        return true;
}
void vindictive::after_round(bool enemy_choice) {
    if (!enemy_choice)
        was_deceived = 1;
}

random::random() {
    srand((unsigned int)(time(0)));
}
bool random::will_i_trust() {
    return (rand() & 1);
}

Persistent::Persistent() {
    last_mine_choice = 1;
}
void Persistent::set_last_mine_choice(bool a) {
    last_mine_choice = a;
}
bool Persistent::get_last_mine_choice() {
    return last_mine_choice;
}
bool Persistent::will_i_trust() {
    last_mine_choice = !last_mine_choice;
    return !last_mine_choice;
}

forgiving::forgiving() {
    how_many_times_was_deceived = 0;
    will_i_deceive = 0;
}
int forgiving::get_how_many_times_was_deceived() {
    return how_many_times_was_deceived;
}
void forgiving::set_how_many_times_was_deceived(int a) {
    how_many_times_was_deceived = a;
}
bool forgiving::get_will_i_deceive() {
    return will_i_deceive;
}
void forgiving::set_will_i_deceive(bool a) {
    will_i_deceive = a;
}
bool forgiving::will_i_trust() {
    if (will_i_deceive)
        return false;
    else
        return true;
}
void forgiving::after_round(bool enemy_choice) {
    if (!enemy_choice)
        how_many_times_was_deceived++;
    if (how_many_times_was_deceived == 2)
        will_i_deceive = 1;
}



















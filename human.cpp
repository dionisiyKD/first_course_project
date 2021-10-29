#include "iostream"
#include "human.h"
using namespace std;

// From the start everyone have 0 money, and trust everyone
human::human() { money = 0; trust = 1; }

void human::incr_money_by2() { money += 2; }
void human::incr_money_by3() { money += 3; }
void human::decr_money_by1() { money -= 1; }
int  human::get_money() { return money; }

void human::set_trust(bool a) { trust = a; }
bool human::get_trust() { return trust; }

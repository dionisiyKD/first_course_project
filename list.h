#ifndef LIST_H
#define LIST_H
#include "human.h"

struct node {
    human* data;
    node* next;
    node* prev;
};
class list {
    node* head;
    node* tail;
    int count;
public:
    list();
    ~list();

    human* get_data(int index);
    int get_count();

    void add_head(human* A);
    void add_tail(human* A);
    void insert_after(int index, human* A);

    void remove(int index);
    int search(human* A);

    void print_from_head();
    void print_from_tail();
};

#endif // LIST_H

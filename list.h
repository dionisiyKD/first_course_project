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
    int count;  // number of nodes
public:
    list();
    ~list();

    human* get_data(int index);
    int get_count();

    void add_head(human* A);
    void add_tail(human* A);
    void insert_after(int index, human* A);

    void insertionSort(); // max to min
    void sortedInsert(node** head_ref, node** tail_ref, node* newNode);

    void remove(int index); // by his number
    int search(human* A);   // return index by data

    void print_from_head();
    void print_from_tail();
};

#endif // LIST_H

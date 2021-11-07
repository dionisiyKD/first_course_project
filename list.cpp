#include "iostream"
#include "list.h"
#include "human.h"
using namespace std;

list::list() {
    head = NULL;
    tail = NULL;
    count = 0;
}
list::~list() {
    while (count) {
        node* tmp = head;
        head = head->next;
        delete tmp;
        count--;
    }
}
human* list::get_data(int index) {
    node* tmp = head;
    for (int i = 0; i < index; i++)
        tmp = tmp->next;
    return tmp->data;
}
int  list::get_count() {
    return count;
}
void list::add_head(human* A) {
    node* tmp = new node;

    tmp->data = A;
    tmp->next = head;
    tmp->prev = NULL;

    if (count == 0) {
        head = tmp;
        tail = tmp;
    }
    else {
        head->prev = tmp;
        head = tmp;
    }
    count++;
}
void list::add_tail(human* A) {
    node* tmp = new node;

    tmp->data = A;
    tmp->next = NULL;
    tmp->prev = tail;

    if (count == 0)
    {
        head = tmp;
        tail = tmp;
    }
    else
    {
        tail->next = tmp;
        tail = tmp;
    }
    count++;
}
void list::insert_after(int index, human* A) {
    while (index < 1 || index > count) {
        cout << "Incorrect position/nInput right index: ";
        cin >> index;
    }
    if (index == count) {
        add_tail(A);
        return;
    }

    node* new_node = new node;

    node* before = head;
    for (int i = 0; i < index - 1; i++) {
        before = before->next;
    }
    node* after = before->next;

    before->next = new_node;
    after->prev = new_node;

    new_node->data = A;
    new_node->next = after;
    new_node->prev = before;

    count++;
}
void list::remove(int index) {
    while (index < 1 || index > count) {
        cout << "Incorrect position\nInput right index: ";
        cin >> index;
    }

    if (index == 1) {
        node* tmp = head;
        node* after = head->next;
        after->prev = NULL;
        head = after;
        delete tmp;
        count--;
        return;
    }
    if (index == count) {
        node* tmp = tail;
        node* before = tail->prev;
        before->next = NULL;
        tail = before;
        delete tmp;
        count--;
        return;
    }

    node* del = head;
    for (int i = 0; i < index - 1; i++)
        del = del->next;

    node* before = del->prev;
    node* after = del->next;

    before->next = after;
    after->prev = before;

    delete del;
    count--;
}
int  list::search(human* A) {
    node* tmp = head;
    for (int i = 0; i < count; i++) {
        if (tmp->data == A)
            return ++i;
        tmp = tmp->next;
    }
    return 0;
}
void list::print_from_head() {
    node* tmp = head;
    for (int i = 0; i < count; i++) {
        cout << "[" << i << "]: " << tmp->data->get_money() << endl;
        tmp = tmp->next;
    }
    cout << endl;
}
void list::print_from_tail() {
    node* tmp = tail;
    for (int i = 0; i < count; i++) {
        cout << "[" << i << "]: " << tmp->data->get_money() << endl;
        tmp = tmp->prev;
    }
}

void list::sortedInsert(node** head_ref, node** tail_ref, node* newNode)
{
    node* current;

    if (*head_ref == NULL) {
        *head_ref = newNode;
        *tail_ref = newNode;
        return;
    }
    if ((*head_ref)->data->get_money() <= newNode->data->get_money()) {
        newNode->next = *head_ref;
        newNode->next->prev = newNode;
        *head_ref = newNode;
        return;
    }
    if ((*tail_ref)->data->get_money() >= newNode->data->get_money()) {
        newNode->prev = *tail_ref;
        newNode->prev->next = newNode;
        *tail_ref = newNode;
        return;
    }

    current = *head_ref;

    while (current->next != NULL &&
           current->next->data->get_money() > newNode->data->get_money())
        current = current->next;

    newNode->next = current->next;

    if (current->next != NULL)
        newNode->next->prev = newNode;

    current->next = newNode;
    newNode->prev = current;
}
void list::insertionSort() {
    node* sorted_head = NULL;
    node* sorted_tail = NULL;
    node* current = head;
    while (current != NULL) {
        node* next = current->next;
        current->prev = current->next = NULL;
        sortedInsert(&sorted_head, &sorted_tail, current);
        current = next;
    }
    head = sorted_head;
    tail = sorted_tail;
}

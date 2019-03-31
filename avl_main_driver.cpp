#include <stdio.h>
#include "avl_tree.h"

int main() {
	printf("Simple test:\n");
    Node root = insert(0, 10);
    root = insert(root, 20);
    root = insert(root, 30);
    root = insert(root, 40);
    root = insert(root, 50);
    root = insert(root, 25);
    root = insert(root, 26);
    root = insert(root, 27);
    root = insert(root, 39);
    root = insert(root, 35);
    root = insert(root, 10);
    root = insert(root, 60);
    root = insert(root, 5);
    root = insert(root, 1);
	root = insert(root, 65);

    print_postorder(root);
	printf("\n");	

    return 0;
}

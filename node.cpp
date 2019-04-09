#include "node.h"
#include <stdlib.h>

int get_key (Node node){
  return node->key;
}

Node get_left (Node node){
  return node->left;
}

void set_left (Node node, Node left_node){
  node->left=left_node;
}

Node get_right (Node node){
  return node->right;
}

void set_right (Node node, Node right_node){
  node->right=right_node;
}

int get_height (Node node){
  return node->height;
}

void set_height (Node node, int height){
  node->height=height;
}

Node create_node (int key){
  Node newNode=(Node)malloc(sizeof(struct node));
  newNode->key=key;
  newNode->left=0;
  newNode->right=0;
  newNode->height=1;
  return newNode;
}

#include <stdio.h>
#include <stdlib.h>

#include "node.h"
#include "avl_tree.h"

#include "shortcut.h"
#include "test_avl.h"

int main(int argc, char *argv[])
{
	ADD_TEST(create_node);
	ADD_TEST(get_key);
	ADD_TEST(simple_height);
	ADD_TEST(set_height);
	ADD_TEST(left_node);
	ADD_TEST(right_node);
	ADD_TEST(get_max);
	ADD_TEST(no_duplicates);
	ADD_TEST(unbalanced_insert);
	ADD_TEST(get_balance);
	ADD_TEST(rotate_left);
	ADD_TEST(rotate_right);
	ADD_TEST(insert_simple);
	ADD_TEST(insert_complex);

	run_tests();
	return 0;
}

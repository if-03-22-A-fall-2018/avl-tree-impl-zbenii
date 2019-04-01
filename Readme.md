# AVL Tree Implementation
By now you know what AVL trees are and how the balancing works.
However, actually implementing an AVL tree can be a little tricky.
So while we are, of course, going to implement one we'll take the liberty of easing into the process a little.

And to keep your mood up this time it will be possible to get a positive grade even without completing all the complicated rotation logic just by doing those tasks that should be easy for you by now.

## Tree Nodes (20%)
The first and rather simple task is to implement the building blocks of our tree: the nodes.
They are pretty straight forward structure containing a key, a height and references to the left and right child respectively.
You need to return a pointer to the newly created node (from the `create_node` function) so for each node you'll have to allocate memory.

Additionally, we'll need some utility functions for getting and setting values.

## Tree Insert & Rotations

### Simplified Tree Insert (30%)
At first you'll implement a function `unbalanced_insert` which takes the tree root node and a key.
It then creates a node based on the given key and insert the node in the tree at the right position.
Remember: there are no duplicate nodes (= no key value exists twice).
For this function, as the name suggests, you don't have to balance the tree.

### AVL Tree Insert (35%)

This is the hard task.
Basically, you'll need to implement an `insert` function which takes the tree root and a key and will handle:

- node creation
- node insertion
- tree rebalancing (if necessary)
- preventing duplicate nodes to be inserted

Especially the rebalancing part is hard.
For that we'll need:

- A way to get the balance (which in turn requires us to get the height of each node)
- Left and right rotations
- The proper logic when to apply which rotation
- Recalculating the heights

To make it easier for you only the insertion function has to be implemented.
So you don't have to worry about deletion and freeing up memory.
Additionally, some (more or less complete) code of the trickiest parts has been left for you to study, complete (mind the `TODO`s) and adapt for the missing parts.
You are, of course, allowed to remove those leftover pieces and do it all by yourself any way you think it's best if that's easier for you - as long as you keep the API and overall functionality as expected.

## Tree Traversing (15%)
Implement a recursive, post order traversal function for the tree.
It should print out the key and height of each node in the format `key|height`

## Done Already? Optional extension: deletion
If the previous tasks were too easy for you you can try to implement a delete function in addition to the insert.
For this keep in mind:

- Deleting a node can cause the tree to rebalance again
- After deleting a node from the tree you'll have to free its memory
- Write at least one happy path unit test for your deletion algorithm to proof that it works

**This is no easy task!**
Thus you shouldn't worry if you don't get it right.
However, **if** you actually manage a proper deletion implementation with a nice unit test you'll get a considerable 'thumbs up' noted in the records.

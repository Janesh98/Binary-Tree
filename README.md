# Binary Tree

## insert(I,T1,T2):
This function recursively searched the tree going left when I < current Root, and right when greater, on each recurse the root node is updated allowing you to traverse the tree, finding the spot I belongs.

## preorder(T,L):
preorder traversal is from the root node to the bottom of each respective subtree, traversing the left subtree first followed by the right. The function puts the left and right subtrees into their own lists and then appends them together with the root node as the head of the list, giving the preorder traversal of the tree.

## inorder(T,L):

inorder traversal begins from the left subtree to the root node and finally the right subtree.
The function places the left and right subtrees into their respective lists and appends them together with the root node following the left traversal results, giving the inorder traversal of the tree.

## postorder(T,L):
preorder traversal begins from the left subtree to the right and finally the root node.
The function places the left and right subtrees into their respective lists and appends them together with the root node at then end of the list, giving the postorder traversal of the tree.

## Search(T,I):
The search function, traverses the tree from root node to left to right, stopping when it finds I in the tree, if not the functions returns false.

## height(T,H):
The height of a tree is given by the greatest number of edges from the the root to leaf node.
The function finds the largest number with the max(Left_Height, Right_Height) line, which chooses the biggest side of the tree, left or right, providing the height of the tree.

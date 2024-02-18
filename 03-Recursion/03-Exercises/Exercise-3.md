Binary trees are trees where all internal nodes have exactly two childres. The
smalles binary trees consist of only one leaf node. We will represent leaf nodes as
leaf(Label). For instance, leaf(3) and leaf(7) are leaf nodes, and
therefore small binary trees. Given two binary trees B1 and B2 we can combine
them into one binary tree using the predicate tree: tree(B1,B2). So, from the
leaves leaf(1) and leaf(2) we can build the binary tree tree(leaf
(1), leaf(2)). And from the binary trees tree(leaf(1), leaf(2)) and
leaf(4) we can build the binary tree tree(tree(leaf(1), leaf
(2)), leaf(4)).

Now, define a predicate swap/2, which produces a mirror image of the binary
tree that is its first argument. For example: 

```
?- swap(tree(tree(leaf(1), leaf(2)), leaf(4)),T).
T = tree(leaf(4), tree(leaf(2), leaf(1))).
yes
```

Code:
```prolog
swap(leaf(X), leaf(X)).

swap(tree(X, Y), tree(SwappedY, SwappedX)) :-
    swap(X, SwappedX),
    swap(Y, SwappedY).
```

Results:
```
2 ?- swap(tree(tree(leaf(1), leaf(2)), leaf(4)),T).
T = tree(leaf(4), tree(leaf(2), leaf(1))).

3 ?- trace.
true.

[trace] 3 ?- swap(tree(tree(leaf(1), leaf(2)), leaf(4)),T).
   Call: (10) swap(tree(tree(leaf(1), leaf(2)), leaf(4)), _15698) ? creep
   Call: (11) swap(tree(leaf(1), leaf(2)), _17062) ? creep
   Call: (12) swap(leaf(1), _17878) ? creep
   Exit: (12) swap(leaf(1), leaf(1)) ? creep
   Call: (12) swap(leaf(2), _17876) ? creep
   Exit: (12) swap(leaf(2), leaf(2)) ? creep
   Exit: (11) swap(tree(leaf(1), leaf(2)), tree(leaf(2), leaf(1))) ? creep
   Call: (11) swap(leaf(4), _17060) ? creep
   Exit: (11) swap(leaf(4), leaf(4)) ? creep
   Exit: (10) swap(tree(tree(leaf(1), leaf(2)), leaf(4)), tree(leaf(4), tree(leaf(2), leaf(1)))) ? creep
T = tree(leaf(4), tree(leaf(2), leaf(1))).
```
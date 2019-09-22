emptyBT(nil) :- !.
emptyBT(t(nil,nil,nil)).

bTree(at(_,nil,nil)).
bTree(t(N,Left,nil)) :- Left @=< N.
bTree(t(N,nil,Right)) :- Right @> N.
bTree(t(_,Left,Right)) :- bTree(Left), bTree(Right).
bTree(t(N,Left,Right)) :- Left @=< N, Right @> N.



insert(I,nil,t(I,nil,nil)).

insert(I,t(Root,Left,Right),t(Root,Left1,Right)) :−
        I =< Root,insert(I, Left, Left1).

insert(I,t(Root,Left,Right),t(Root,Left,Right1)) :−
        insert(I,Right,Right1).



preorder(nil,[]).

preorder(t(Root,Left,Right),[Root|List]) :-
        preorder(Left,Left_L),
        preorder(Right,Right_L),
        append(Left_L,Right_L,List).

postorder(nil,[]).

postorder(t(Root,Left,Right),List) :-
        postorder(Left,Left_L),
        postorder(Right,Right_L),
        append(Left_L,Right_L,List1),
        append(List1, [Root], List).

inorder(nil,[]).

inorder(t(X,Left,Right),List) :-
        inorder(Left,Left_L),
        inorder(Right,Right_L),
        append(Left_L,[X|Right_L],List).



search(t(I, _, _), I).
search(t(Root, Left, _), I) :- I < Root, search(Left, I).
search(t(_, _, Right), I) :- search(Right, I).



height(nil, 0).
height(t(_,nil,nil), 1).

height(t(_,Left,Right), H) :-
        height(Left, Left_Height),
        height(Right, Right_Height),
        H is 1 + max(Left_Height, Right_Height).
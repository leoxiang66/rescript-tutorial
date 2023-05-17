type rec myList<'a> = 
| Nil 
| Cons('a, myList<'a>)


type rec tree<'a> = 
| Leaf 
| Node(tree<'a>, 'a, tree<'a>)

type option<'a> = 
| None 
| Some('a)


type result<'a, 'b> = 
| Ok('a) 
| Error('b)

let myTree: tree<int> = 
  Node(
    Node(Leaf, 1, Leaf),
    2,
    Node(Leaf, 3, Leaf)
  )

Js.log("hi")
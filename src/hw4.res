type rec mtree<'a> = 
  | Leaf 
  | Node (left: mtree<'a>, maximum: 'a, element: 'a, right: mtree<'a>)

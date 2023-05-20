// type rec mtree<'a> = 
//   | Leaf 
//   | Node (mtree<'a>, 'a, 'a, mtree<'a>)


// let rec set_mtree = (tree: mtree<int>): Set.Int => {
//   switch tree {
//   | Leaf => Belt.Set.Int.empty
//   | Node (l,m,a,r) => Belt.Set.Int.empty
//     Set.union(
//       Set.add(a, Set.make()),
//       Set.union(set_mtree(left), set_mtree(right))
//     )
//   }
// }

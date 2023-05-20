module MySet = {
  type t<'a> = list<'a>

  let empty: t<'a> = list{}

  let insert = (item: 'a, set: t<'a>): t<'a> =>
    if (List.mem(item, set)) {
      set
    } else {
      [item, ...set]
    }

  let contains = (item: 'a, set: t<'a>): bool =>
    List.mem(item, set)

  let remove = (item: 'a, set: t<'a>): t<'a> =>
    List.filter((i) => i != item, set)
}



type rec tree<'a> = 
| Leaf 
| Node(tree<'a>, 'a, tree<'a>)

type option<'a> = 
| None 
| Some('a)


type result<'a, 'b> = 
| Ok('a) 
| Error('b)




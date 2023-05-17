// anonymous function
// (x, y) => 1
// bind to a name
let add = (x, y) => 1

// labeled
let add = (~first as x, ~second as y) => x + y
// with punning sugar
let add = (~first, ~second) => first + second

// labeled with default value
let add = (~first as x=1, ~second as y=2) => x + y
// with punning
let add = (~first=1, ~second=2) => first + second

// optional
// let add = (~first as x=?, ~second as y=?) => switch x {...}
// with punning
// let add = (~first=?, ~second=?) => switch first {...}

let rec slice = (xs: list<'a>, s: int, l: int): list<'a> => {
  switch (xs, s, l) {
  | (list{}, _, _) => list{}
  | (_, 0, 0) => list{}
  | (list{x,...xss}, 0, l) => list{x, ...slice(xss, 0, l - 1)}
  | (list{_,...xss}, s, l) => slice(xss, s - 1, l)
  }
}


let rec printList = (xs: list<'a>) =>{
switch(xs){
    | list{} => Js.log("\n")
    | list{h,...t} => {
        Js.log(h)
        printList(t)
    }
    }
}

printList(slice(list{1,2,3,4,5},0,5))
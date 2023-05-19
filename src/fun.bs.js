// Generated by ReScript, PLEASE EDIT WITH CARE


function add(firstOpt, secondOpt) {
  var first = firstOpt !== undefined ? firstOpt : 1;
  var second = secondOpt !== undefined ? secondOpt : 2;
  return first + second | 0;
}

function slice(_xs, _s, l) {
  while(true) {
    var s = _s;
    var xs = _xs;
    if (!xs) {
      return /* [] */0;
    }
    if (s === 0 && l === 0) {
      return /* [] */0;
    }
    var xss = xs.tl;
    if (s === 0) {
      return {
              hd: xs.hd,
              tl: slice(xss, 0, l - 1 | 0)
            };
    }
    _s = s - 1 | 0;
    _xs = xss;
    continue ;
  };
}

function printList(_xs) {
  while(true) {
    var xs = _xs;
    if (xs) {
      console.log(xs.hd);
      _xs = xs.tl;
      continue ;
    }
    console.log("\n");
    return ;
  };
}

printList(slice({
          hd: 1,
          tl: {
            hd: 2,
            tl: {
              hd: 3,
              tl: {
                hd: 4,
                tl: {
                  hd: 5,
                  tl: /* [] */0
                }
              }
            }
          }
        }, 0, 5));

export {
  add ,
  slice ,
  printList ,
}
/*  Not a pure module */

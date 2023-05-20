// Generated by ReScript, PLEASE EDIT WITH CARE

import * as $$Set from "./set.js";
import * as Belt_List from "rescript/lib/es6/belt_List.js";

function to_list(tree) {
  if (!tree) {
    return /* [] */0;
  }
  var leftList = to_list(tree._0);
  var rightList = to_list(tree._2);
  var ret = Belt_List.concat(leftList, {
        hd: tree._1,
        tl: /* [] */0
      });
  return Belt_List.concat(ret, rightList);
}

function set_mtree(tree) {
  if (!tree) {
    return $$Set.$$Set.empty(undefined);
  }
  var subset1 = $$Set.$$Set.insert(tree._2, set_mtree(tree._0));
  var subset2 = set_mtree(tree._3);
  return $$Set.$$Set.union(subset1, subset2);
}

var Tree = {
  to_list: to_list,
  set_mtree: set_mtree
};

export {
  Tree ,
}
/* No side effect */

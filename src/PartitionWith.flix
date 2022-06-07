def partitionWith(pred: a -> Bool, coll: List[a]) : List[List[a]] =
  match coll {
    case Nil => Nil
    case h :: t =>
      let notPred = pred >> Bool.not;
      let xs = List.takeWhile(notPred, t);
      let ys = List.dropWhile(notPred, t);
      (h :: xs) :: partitionWith(pred, ys)
  }

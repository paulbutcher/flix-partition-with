def splitWhen(pred: a -> Bool, coll: List[a]): (List[a], List[a]) =
  (List.takeWhile(pred, coll), List.dropWhile(pred, coll))

def complement(pred: a -> Bool): a -> Bool =
  x -> not pred(x)

def partitionWith(pred: a -> Bool, coll: List[a]) : List[List[a]] =
  match coll {
    case Nil => Nil
    case h :: t =>
      let (xs, ys) = splitWhen(complement(pred), t);
      (h :: xs) :: partitionWith(pred, ys)
  }

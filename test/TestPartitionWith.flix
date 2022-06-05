namespace TestPartitionWith {
  def isEven(x: Int32): Bool = x mod 2 == 0

  @test
  def test01(): Bool =
    partitionWith(isEven, Nil) == Nil

  @test 
  def test02(): Bool =
    partitionWith(isEven, 1 :: Nil) == (1 :: Nil) :: Nil

  @test 
  def test03(): Bool =
    partitionWith(isEven, 2 :: Nil) == (2 :: Nil) :: Nil

  @test 
  def test04(): Bool =
    partitionWith(isEven, 1 :: 2 :: Nil) == (1 :: Nil) :: (2 :: Nil) :: Nil

  @test 
  def test05(): Bool =
    partitionWith(isEven, 2 :: 1 :: Nil) == (2 :: 1 :: Nil) :: Nil

  @test 
  def test06(): Bool =
    partitionWith(isEven, 2 :: 2 :: Nil) == (2 :: Nil) :: (2 :: Nil) :: Nil

  @test 
  def test07(): Bool =
    partitionWith(isEven, (1 :: 3 :: 5 :: 2 :: 7 :: 9 :: 4 :: 1 :: 3 :: Nil)) == 
      (1 :: 3 :: 5 :: Nil) :: (2 :: 7 :: 9 :: Nil) :: (4 :: 1 :: 3 :: Nil) :: Nil
}

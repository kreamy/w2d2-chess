module Step

  KNIGHT = [
    [2,1],
    [2,-1],
    [-2,1],
    [-2,-1],
    [1,2],
    [1,-2],
    [-1,2],
    [-1,-2]
  ]

  KING = [
    [1, 1],
    [1, -1],
    [-1, 1],
    [-1, -1],
    [0, 1],
    [0, -1],
    [1, 0],
    [-1, 0]
  ]

  def move_knight
    KNIGHT
  end

  def move_king
    KING
  end

end

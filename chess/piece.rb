include Slide
include Step
include Skip

def move_cross
  CROSS
end

def move_diag
  DIAG
end


class Piece

  attr_reader :color, :value

  def initialize(color, pos, board) #pos, board)
    @color = color
    @pos = pos
    @board = board
  end
end

class Queen < Piece
  include Slide

  move_cross + move_diag
end

class King < Piece

end

class Bishop < Piece
  include Slide

end

class Knight < Piece

end

class Rook < Piece
  include Slide

  def initialie(color) #pos, board)
    super(color) #pos, board)
  end
end

class Pawn < Piece
  include Skip

end

class NullPiece < Piece
  def initialize #, pos, board)
    @name = nil
    @value = "   "
  end
end

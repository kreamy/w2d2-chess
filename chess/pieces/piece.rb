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

  attr_reader :color, :pos

  def initialize(color, pos, board) #pos, board)
    @color = color
    @pos = pos
    @board = board
  end

  def to_s
    "#{piece}"
  end
end

# class Queen < Piece
#   include Slide
#
#   def move_dirs
#     move_cross + move_diag
#   end
# end
#
# class King < Piece
#
#   include Step
#
#   def symbol
#     "\u2654"
#   end
#
#   def move_dirs
#     move_king
#   end
#
# end
#
# class Bishop < Piece
#   include Slide
#
#   def symbol
#     "\u2657"
#   end
#
#   def move_dirs
#     move_diag
#   end
#
# end

# class Knight < Piece
#   include Step
#
#   def symbol
#     "\u2658"
#   end
#   def move_dirs
#     move_knight
#   end
# end

# class Rook < Piece
#   include Slide
#
#   def symbol
#     "\u2656"
#   end
#
#   def initialie(color) #pos, board)
#     super(color) #pos, board)
#   end
# end
#
# class Pawn < Piece
#
#   def symbol
#     "\u2659"
#   end
#
#   include Skip
#
# end

# class NullPiece < Piece
#   def initialize #, pos, board)
#     @name = nil
#     @value = "   "
#   end
# end

require_relative "piece.rb"

class NullPiece < Piece
  def initialize #, pos, board)
    @name = nil
    @value = "   "
  end
end

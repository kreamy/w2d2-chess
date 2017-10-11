require_relative "pieces.rb"

class Rook < Piece
  include Slide

  def symbol
    "\u2656"
  end

  def initialie(color) #pos, board)
    super(color) #pos, board)
  end
end

require_relative "piece.rb"

class Knight < Piece
  include Step

  def symbol
    "\u2658"
  end
  def move_dirs
    move_knight
  end
end

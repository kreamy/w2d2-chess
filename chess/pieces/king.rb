require_relative "piece.rb"

class King < Piece

  include Step

  def symbol
    "\u2654"
  end

  def move_dirs
    move_king
  end

end

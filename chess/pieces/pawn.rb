require_relative "pieces.rb"

class Pawn < Piece

  def symbol
    "\u2659"
  end

  include Skip

end

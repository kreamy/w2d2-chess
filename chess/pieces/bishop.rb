require_relative "../piece.rb"
require_relative '../modules/slide.rb'

class Bishop < Piece
  include Slide

  def symbol
    "\u2657"
  end

  def move_dirs
    move_diag
  end

end

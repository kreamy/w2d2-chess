# require_relative "pieces.rb"
require_relative '../modules/slide.rb'
require_relative '../piece'

class Queen < Piece
  include Slide

  def move_dirs
    move_cross + move_diag
  end
end

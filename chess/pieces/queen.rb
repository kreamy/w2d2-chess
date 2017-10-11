require_relative "piece.rb"

class Queen < Piece
  include Slide

  def move_dirs
    move_cross + move_diag
  end
end

require_relative "piece.rb"

class Piece

  attr_reader :color, :value

  def initialize(color, pos, board) #pos, board)
    @color = color
    @pos = pos
    @board = board
  end

  def to_s
    "#{piece}"
  end
end

require_relative 'piece.rb'

class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(8) {Array.new(8)}
  end

  # def populate
  #   (0..7).each do |row|
  #     (0..7).each do |col|
  #       if row == 0 || row == 1
  #         self[[row, col]] = Piece.new("White")
  #       elsif row == 6 || row == 7
  #         @grid[row][col] = Piece.new("Black")
  #       else
  #         @grid[row][col] = NullPiece.new
  #       end
  #     end
  #   end

def populate
  backrow = [Rook, Knight, Bishop, King, Queen, Bishop, Knight, Rook]
end

  def move_piece(start_pos, end_pos)
    if self[start_pos].is_a?(NullPiece)
      raise StandardError.new "There is no piece at start poistion"
    elsif (end_pos[0] > 7 || end_pos[1] > 7) || (end_pos[0] < 0 || end_pos[1] < 0)
      raise StandardError.new "The end position is not on the board"
    elsif self[end_pos].color == self[start_pos].color
      raise StandardError.new "There is already a piece at that position"
    end
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def valid_move?(pos)
    in_bounds? && (self[pos].is_a?(NullPiece) || self[pos].piece.color != pos.piece.color)
  end

  def in_bounds?(pos)
    pos[0].between?(0,7) && pos[1].between?(0,7)
  end

end

# board = Board.new
# board.populate
# # p board
# # board.move_piece([0,0], [0,1])
# # board.move_piece([0,0], [8,9])
# # board.move_piece([3,3], [3,4])
# board.move_piece([0,0], [3,3])
# p board

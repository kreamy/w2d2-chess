module Slide

  CROSS = [
    [0, 1],
    [0, -1],
    [1, 0],
    [-1, 0]
  ]

  DIAG = [
    [1, 1],
    [1, -1],
    [-1, 1],
    [-1, -1]
  ]

def move_cross
  CROSS
end

def move_diag
  DIAG
end

def moves
  moves = []

  move_dirs.each do |px, py|
    moves.concat(self.available_positions(px, py))
  end

  moves
end

def available_positions(px, py)
  moves = []

  loop do

    pos_x, pos_y = pos
    pos_x, pos_y = pos_x + px, pos_y + py

    break unless board.valid_move?([pos_x, pos_y])



    if board[pos].color != self.color
      moves << [pos_x, pos_y]
      break
    else
      moves << [pos_x, pos_y]
    end
  end

  moves
end

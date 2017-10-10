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

def move
  
end

def available_positions
  moves = []

  loop do

    pos_x, pos_y = pos
    pos_x, pos_y = pos_x + px, pos_y + py

    moves << pos = [pos_x, pos_y] if board.valid_move?(pos)

  end
  end
end

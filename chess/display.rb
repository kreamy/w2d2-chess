require 'colorize'
require_relative 'cursor.rb'
require_relative 'board.rb'
require_relative 'piece.rb'

class Display

  attr_reader :cursor, :board

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], @board)
  end

  def render
    @board.grid.each_with_index do |row, idx1|
      arr = []
      row.each_with_index do |col, idx2|
        if idx1.odd?
          if [idx1, idx2] == cursor.cursor_pos
            arr << (" #{symbol} ").colorize(:background => :red)
          elsif idx2.odd?
            arr << (" #{symbol} ").colorize(:background => :blue)
          elsif idx2.even?
            arr << (" #{symbol} ").colorize(:background => :white)
          end
        else
          if [idx1, idx2] == cursor.cursor_pos
            # if idx2.odd?
            #   arr << (" #{col.value} ").colorize(:background => :green)
            # else
            #   arr << (" #{col.value} ").colorize(:background => :red)
            arr << (" #{col.value} ").colorize(:background => :red)
            # end
          elsif idx2.odd?
            arr << (" #{col.value} ").colorize(:background => :white)
          elsif idx2.even?
            arr << (" #{col.value} ").colorize(:background => :blue)
          end
        end
      end
      print "#{arr.join("")} \n"
    end
  end

  def play
    while true
      system("clear")
      render
      cursor.get_input
    end
  end

end


board = Board.new
board.populate
display = Display.new(board)
display.play

# def render
#   @board.grid.each_with_index do |row, idx1|
#     arr = []
#     row.each_with_index do |col, idx2|
#       if idx1.odd?
#         if [idx1, idx2] == cursor.cursor_pos
#           arr << (" #{col.value} ").colorize(:background => :red)
#         elsif idx2.odd?
#           arr << (" #{col.value} ").colorize(:background => :blue)
#         elsif idx2.even?
#           arr << (" #{col.value} ").colorize(:background => :white)
#         end
#       else
#         if [idx1, idx2] == cursor.cursor_pos
#           arr << (" #{col.value} ").colorize(:background => :red)
#         elsif idx2.odd?
#           arr << (" #{col.value} ").colorize(:background => :white)
#         elsif idx2.even?
#           arr << (" #{col.value} ").colorize(:background => :blue)
#         end
#       end
#       # if [idx1, idx2] == cursor.cursor_pos
#       #   arr[idx2].colorize(:background => :red)
#       # end
#     end
#     print "#{arr.join("")} \n"
#   end
# end

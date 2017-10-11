require "colorize"
require_relative "board"
require_relative "cursor"

class Display

  attr_accessor :cursor

  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def render
    puts " _________________________________"
    @board.grid.each_with_index do |row, row_idx|
      row.each_index do |col_idx|
        current_pos = [row_idx, col_idx]
        if current_pos == @cursor.cursor_pos
          if @cursor.selected
            print " | " + @board[current_pos].to_s.colorize(:blue)
          else
            print " | " + @board[current_pos].to_s.colorize(:red)
          end
        else
          print " | " + @board[current_pos].to_s
        end
      end
       puts " | "
       puts " _________________________________"
    end
  end


end

require_relative "piece"
class Board
  attr_accessor :grid
  def initialize()
    @grid = make_starting_grid
  end

  def make_starting_grid
    starting_board = Array.new(8) { Array.new(8) }
    starting_board[0][0] = Piece.new("R", [0,0])
    starting_board[0][1] = Piece.new("K", [0,1])
    starting_board[0][2] = Piece.new("B", [0,2])
    starting_board[0][3] = Piece.new("Q", [0,3])
    starting_board[0][4] = Piece.new("K", [0,4])
    starting_board[0][5] = Piece.new("B", [0,5])
    starting_board[0][6] = Piece.new("K", [0,6])
    starting_board[0][7] = Piece.new("R", [0,7])
    starting_board[1].map! { |el| Piece.new("P") }
    starting_board[7][0] = Piece.new("R", [7,0])
    starting_board[7][1] = Piece.new("K", [7,1])
    starting_board[7][2] = Piece.new("B", [7,2])
    starting_board[7][3] = Piece.new("Q", [7,3])
    starting_board[7][4] = Piece.new("K", [7,4])
    starting_board[7][5] = Piece.new("B", [7,5])
    starting_board[7][6] = Piece.new("K", [7,6])
    starting_board[7][7] = Piece.new("R", [7,7])
    starting_board[6].map! { |el| Piece.new("P") }
    starting_board
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, piece)
    row, col = pos
    @grid[row][col] = piece
  end

  def dup()
  end

  def move_piece(color, from_pos, to_pos)
    raise MoveError if self[from_pos].nil?
    raise MoveError if self[from_pos].valid_move?
    self[to_pos] = self[from_pos]
    self[from_pos] = nil
    self[to_pos].pos = to_pos
  end

  def move_piece!(from_pos, to_pos)
  end

  def checkmate?()
  end

  def find_king(color)
  end

end

class MoveError < StandardError

end

require_relative "piece"
require_relative "sliding_piece"

class Rook < Piece
  include SlidingPiece

  def initialize
    
  end

  def directions
    [:left, :right, :up, :down]
  end

end

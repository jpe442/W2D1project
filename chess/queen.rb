require_relative "sliding_piece"

class Queen < Piece
  include SlidingPiece

  def initialize()
  end

  def directions
    [:up, :down, :left, :right, :diagonal]
  end

end



# current_pos[0][0] => [-1][0]

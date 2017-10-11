require_relative "board"

class Piece

attr_reader :color

  def initialize(name, color)
    @name = name
    @color = color
  end

  def to_s()
    @name
  end

  def symbol()
  end

  def valid_moves()
  end

  def move_into_check(to_pos)
  end

  def valid_move?
    true
  end

end

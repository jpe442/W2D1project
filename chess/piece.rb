require_relative "board"

class Piece

attr_accessor :pos

  def initialize(name, pos)
    @name = name
    @pos = pos
  end

  def to_s()
  end

  def empty?()
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

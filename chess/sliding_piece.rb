module SlidingPiece

  def moves(directions, start_pos)
    possible_moves = []
    directions.each do |direction|
      case direction
      when :left
        left = []
        idx = start_pos[1]
        until idx <= 0
          idx -= 1
          left << [start_pos[0],idx]
        end
        possible_moves << left
      when :right
        right = []
        idx = start_pos[1]
        until idx >= 7
          idx += 1
          right << [start_pos[0],idx]
        end
        possible_moves << right
      when :up
        up = []
        idx = start_pos[0]
        until idx <= 0
          idx -= 1
          up << [idx, start_pos[0]]
        end
        possible_moves << up
      when :down
        down = []
        idx = start_pos[0]
        until idx >= 7
          idx += 1
          down << [idx, start_pos[0]]
        end
        possible_moves << down
      end

    end
      possible_moves.flatten!(1)
  end

end

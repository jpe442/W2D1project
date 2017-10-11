require_relative "display"
require_relative "board"


def play(board, display, cursor)
  game_over = nil
  until game_over
    display.render
    cursor.get_input
    system("clear")
  end
end

b = Board.new
d = Display.new(b)
c = d.cursor

play(b, d, c)

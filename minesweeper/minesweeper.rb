require_relative 'board'

class Minesweeper

  def initialize
    @board = Board.new
  end

  def run
    play_turn until game_over?
    puts "Game over!"
  end

  def play_turn
      @board.render
      # take input
      # check board and make changes to board
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Minesweeper.new
  game.run
end

class Game
  attr_reader :moves

  def self. instance
    @game
  end

  def self.create(move)
    @game = Game.new(move)
  end

  def initialize(move)
    @move = move
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def play
    @comp_move = @moves.sample
    @session = [@move, @comp_move]
    "#{message}.\n#{result}"
  end

  private
  def win?
    win_outcomes = [["Paper", "Rock"], ["Rock", "Scissors"], ["Scissors", "Paper"]]
    win_outcomes.include?(@session)
  end

  def result
    if win?
      "You have won!"
    else
      if @move == @comp_move
        "It's a draw."
      else
        "You have lost!"
      end
    end
  end

  def message
    "Your move: #{@move}.\nOpponent's move: #{@session[1]}"
  end
end

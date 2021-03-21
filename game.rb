require_relative 'explain_winner'
require_relative 'calc_winner'
class Game
  attr_accessor :player1, :player2
  attr_reader :winner, :opponent, :type, :explanation
  def initialize(player1, opponent, type, player2, player_class = Player)
    @player_class = player_class
    @player1 = @player_class.new(player1)
    @player2 = @player_class.new(player2)
    type == "normal" ? @rps = ["Rock", "Paper", "Scissors"] : @rps = ["Rock", "Paper", "Scissors", "Spock", "Lizard"]
    @opponent = opponent
    @type = type
    @calc_winner = CalcWinner.new
    @explain_winner = ExplainWinner.new
  end

  def self.new_game(player1, opponent, type, player2 = "Your opponent")
    player1 = "Anonymous" if player1 == ""
    @@this_game = Game.new(player1, opponent, type, player2)
  end

  def self.stored_game
    @@this_game
  end

  def play(choice1, choice2 = @rps.sample)
    @player1.turn = choice1
    @player2.turn = choice2
    @explanation = @explain_winner.explanation_code(@player1.turn,@player2.turn)
    @winner = @calc_winner.winner(@player1.turn,@player2.turn,@player1.name,@player2.name)
  end
end

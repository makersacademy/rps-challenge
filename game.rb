require_relative 'lizard'
require_relative 'rock'
require_relative 'paper'
require_relative 'scissors'
require_relative 'spock'

class Game
  attr_accessor :player1, :player2
  attr_reader :winner, :opponent, :type, :explanation
  def initialize(player1, opponent, type, player2, player_class = Player)
    @player_class = player_class
    @player1 = @player_class.new(player1)
    @player2 = @player_class.new(player2)
    if type == "normal"
      @rps = ["Rock", "Paper", "Scissors"]
    else
      @rps = ["Rock", "Paper", "Scissors", "Spock", "Lizard"]
    end
    @opponent = opponent
    @type = type
  end

  def self.new_game(player1, opponent, type, player2 = "Your opponent")
    player1 = "Anonymous" if player1 == ""
    @@this_game = Game.new(player1, opponent, type, player2)
  end

  def self.stored_game
    @@this_game
  end

  def create_object(choice1)
    case choice1
    when "Rock" then @player1.turn = Rock.new
    when "Paper" then @player1.turn = Paper.new
    when "Scissors" then @player1.turn = Scissors.new
    when "Lizard" then @player1.turn = Lizard.new
    when "Spock" then @player1.turn = Spock.new
    end
  end

  def play(choice1, choice2 = @rps.sample)
    create_object(choice1)
    @player2.turn = choice2
    @explanation = @player1.turn.explanation(@player2.turn)
    @winner = @player1.turn.winner(@player2.turn, @player1.name, @player2.name)
    @player1.turn = choice1
  end
end

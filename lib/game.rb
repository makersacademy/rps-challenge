require_relative 'rps'
class Game
  attr_reader :player

  def initialize(player1, rps = Rps.new)
    @player = player1
    @player_score
    @computer_score
    @rpsGame = rps
  end

  def computer_choice
    @computer_score = ["rock", "paper", "scissors"].sample
  end

  def player_choice
    @player_score = @player.choice.downcase
  end

  def score
    "#{@player.name}: #{@player_score}, computer: #{@computer_score}"
  end

  def play
    score
    game = @rpsGame.run(@player.name, @player_score, "Computer", @computer_score)
    return "#{score}, #{game}"
  end

end

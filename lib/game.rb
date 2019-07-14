require_relative 'rps'
class Game
  attr_reader :player

  def initialize(player1, player2, rps = Rps.new)
    @player = player1
    @player2 = player2
    @player_score
    @player2_score
    @computer_score
    @rpsGame = rps
  end

  def computer_choice
    @computer_score = ["rock", "paper", "scissors"].sample
  end

  def player_choice
    @player_score = @player.choice.downcase
  end

  def player2_choice
    @player2_score = @player2.choice.downcase
  end

  def score
    "#{@player.name}: #{@player_score}, computer: #{@computer_score}"
  end

  def score2
    "#{@player.name}: #{@player_score}, #{@player2.name}: #{@player2_score}"
  end

  def play
    score
    game = @rpsGame.run(@player.name, @player_score, "Computer", @computer_score)
    return "#{score}, #{game}"
  end

  def play_2
    score
    game = @rpsGame.run(@player.name, @player_score, @player2.name, @player2_score)
    return "#{score2}, #{game}"
  end

end

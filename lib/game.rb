require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player_score, :computer_score, :tie_score

  def initialize(player, computer)
    @players = [player, computer]
    @player_score = @computer_score = @tie_score = 0
  end

  def self.start(player_name, player = Player.new(player_name), computer = Computer.new)
    @game = self.new(player, computer)
  end

  def self.instance
    @game
  end

  def player
    @players.first
  end

  def computer
    @players.last
  end

  def play(player_attack)
    player.take_turn(player_attack)
    computer.take_turn
    score
  end

  private

  def score
    @tie_score += 1 if draw
    @player_score += 1 if player_wins?
    @computer_score += 1 if !player_wins? && !draw
  end

  def player_wins?
    winning_combinations.include?([player.attack, computer.attack])
  end

  def draw
    player.attack == computer.attack
  end

  def winning_combinations
    [[:rock, :scissors],[:paper, :rock],[:scissors, :paper]]
  end

end

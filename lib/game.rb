require_relative 'computer'
require_relative 'player'

class Game

  attr_accessor :player, :computer

CHOICES = ["spock","scissors","paper","rock","lizard"]

  def initialize(player=nil, computer=Computer)
    @player = player
    @computer = computer.new
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def play(player_choice)
    @player.choice = player_choice
    computer_choice = @computer.choice
    pp = player_points(player_choice, computer_choice)
    cp = computer_points(player_choice, computer_choice)
    update_score(cp, pp)
  end

  def player_points(player_choice, computer_choice)
    player_choice_index = CHOICES.index(player_choice)
    computer_choice_index = CHOICES.index(computer_choice)
    [0,-1,1,-1,1][(player_choice_index - computer_choice_index)%5.0]
  end

  def computer_points(player_choice, computer_choice)
    player_points(computer_choice, player_choice)
  end

  def update_score(computer_points, player_points)
    @computer.score += computer_points
    @player.score += player_points
  end

  def leader
    return "both" if @computer.score == @player.score
    @player.score > @computer.score ? @player.name : @computer.name
  end

end

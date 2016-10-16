require_relative 'player'
class Game

attr_reader :player, :winner

  class << self; attr_accessor :game end

  def self.start(name)
    @game = Game.new(Player.new(name))
  end

  def initialize(name)
    @player = name
  end

  def player_name
    @player.name
  end

  def make_player_choice(pick)
    @player.make_choice(pick)
  end

  def determine_winner
    choices = [player_choice, computer_choice]
    rock = 0
    paper = 0
    scissors = 0

    choices.each do |choice|
      rock += 1 if choice == 'rock'
      paper += 1 if choice == 'paper'
      scissors += 1 if choice == 'scissors'
    end

    return 'Nobody' if rock == 2 || paper == 2 || scissors == 2

    winner = 'rock' if paper == 0
    winner = 'paper' if scissors == 0
    winner = 'scissors' if rock == 0

    return player_name if choices.index(winner) == 0
    return 'Computer'
  end

  def set_winner
    @winner = determine_winner
  end

  def computer_choice
    choice = rand
    return choice = 'rock' if choice <= 0.33
    return choice = 'paper' if choice >0.33 && choice <= 0.66
    return choice = 'scissors' if choice >0.66
  end

  def player_choice
    @player.choice
  end
end

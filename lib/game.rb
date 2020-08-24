require_relative 'player'

class Game

  attr_reader :players, :player, :computer

  def initialize(player, computer)
    @players = [player, computer]
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def rps(player_choice, computer_choice)

    return 'player' if player_choice == 'scissors' && computer_choice == 'paper'
    return 'player' if player_choice == 'paper' && computer_choice == 'rock'
    return 'player' if player_choice == 'rock' && computer_choice == 'scissors'
    return 'computer' if computer_choice == 'scissors' && player_choice == 'paper'
    return 'computer' if computer_choice == 'paper' && player_choice == 'rock'
    return 'computer' if computer_choice == 'rock' && player_choice == 'scissors'
    return 'Draw!' if player_choice == computer_choice

  end

end

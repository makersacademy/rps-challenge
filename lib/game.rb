require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :player, :computer
  attr_accessor :player_weapon
  @game = nil

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer   
    @game = nil
    @player_weapon = nil
  end

  def self.save_game(new_game)
    @game = new_game
  end

  def self.load_game
    @game
  end

  def winner(player_weapon, computer_weapon)
    if player_weapon == computer_weapon
      "It's a draw"
    elsif player_weapon== "rock" && computer_weapon == "paper"
      "you win!"
    elsif player_weapon == "paper" && computer_weapon == "scissors"
      "you win!"
    elsif player_weapon == "scissors" && computer_weapon == "rock"
      "you win!"
    elsif player_weapon == "paper" && computer_weapon == "rock"
      "computer wins, you lose"
    elsif player_weapon == "scissors" && computer_weapon == "paper"
      "computer wins, you lose"
    elsif player_weapon == "rock" && computer_weapon == "scissors"
      "computer wins, you lose"
    end
  end
end

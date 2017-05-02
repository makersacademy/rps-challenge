require_relative './computer'
require_relative './player'

class SinglePlayer

  attr_reader :player, :computer

  def initialize(name)
    @player = Player.new(name)
    @computer = Computer.new
    @win = { rock: :scissors, scissors: :paper, paper: :rock }
  end

  def self.create_game(name)
    @game = SinglePlayer.new(name)
  end

  def self.instance
    @game
  end

  def decide_winner(player_choice, computer_choice)
    return :tied if player_choice == computer_choice
    @win[player_choice] == computer_choice ? @player : @computer
  end

end

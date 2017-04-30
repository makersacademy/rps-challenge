require_relative './computer'
require_relative './player'

class SinglePlayer

  attr_reader :player, :computer

  def initialize(name)
    @player = Player.new(name)
    @computer = Computer.new
  end

  def self.create_game(name)
    @game = SinglePlayer.new(name)
  end

  def self.instance
    @game
  end

  def decide_winner(player_choice, computer_choice)
    weapons = [player_choice, computer_choice]
    if weapons[0] == weapons[1]
      :tied
    elsif weapons == [:rock, :scissors] || weapons == [:scissors, :paper] || weapons == [:paper, :rock]
      @player
    else
      @computer
    end
  end

end

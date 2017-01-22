class Game

  attr_reader :selection, :player, :rock_result

  @game = nil

  def initialize(player)
    @player = player
  end

  def self.instance
    @game
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def selection
    ["Rock" , "Paper", "Scissors"].sample
  end

  def rock_result
    if selection == 'Rock'
      "You draw!"
    elsif selection == 'Paper'
      "You lose!"
    else
      "You win!"
    end
  end


end

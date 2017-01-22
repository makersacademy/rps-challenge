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
    @selection = ["Rock" , "Paper", "Scissors"].sample
  end

  def rock_result
    if @selection == 'Rock'
      "You draw!"
    elsif @selection == 'Paper'
      "You lose!"
    else
      "You win!"
    end
  end

  def paper_result
    if @selection == 'Rock'
      "You win!"
    elsif @selection == 'Paper'
      "You draw!"
    else
      "You lose!"
    end
  end

  def scissors_result
    if @selection == 'Rock'
      "You lose!"
    elsif @selection == 'Paper'
      "You win!"
    else
      "You draw!"
    end
  end


end

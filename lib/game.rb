class Game
  @game = nil

  def initialize(player1)
    @players = [player1]
  end

  def self.instance #attr reader for game class instance variable- cant use attr_reader
    @game
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def player1
    @players[0]
  end

  def rock_result
    if @choice == 'Rock'
      "You draw!"
    elsif @choice == 'Paper'
      "You lose! Computer chose Paper"
    else
      "You win! Computer chose Scissors"
    end
  end

  def paper_result
    if @choice == 'Rock'
      "You win! Computer chose Rock"
    elsif @choice == 'Paper'
      "You draw!"
    else
      "You lose! Computer chose Scissors"
    end
  end

  def scissors_result
    if @choice == 'Rock'
      "You lose! Computer chose Rock"
    elsif @choice == 'Paper'
      "You win!Computer chose Paper"
    else
      "You draw!"
    end
  end
end

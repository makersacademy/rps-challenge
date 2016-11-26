class Game

  attr_reader :player

  @game

  def self.init( player )
    @game = Game.new( player )
  end

  def self.now
    @game
  end

  def initialize( player )
    @player = player
    @player_choice
  end

  def show( choice )
    choice
  end

  def computer_choice
    choice = random_number
    return "rock"     if choice == 1
    return "paper"    if choice == 2
    return "scissors" if choice == 3
  end

  def random_number
    rand(1...3)
  end

end

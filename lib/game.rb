class Game
  attr_reader :player_1

  def initialize(player_1)
    @player_1 = player_1
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def computer_decision
    option = rand(1..3)
    if option == 1
      return "Rock"
    elsif option == 2
      return "Paper"
    elsif option == 3
      return "Scissors"
    end
  end
  
end

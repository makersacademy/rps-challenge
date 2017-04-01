class Game
  attr_reader :human, :comp

  def initialize(human, comp)
    @human = human
    @comp = comp
  end

  def self.create(human, comp)
    @game = Game.new(human, comp)
  end

  def self.instance
    @game
  end

  def calculate_winner
    if human.choice == comp.choice
      "Draw"
    elsif human.choice == "orange-throat" && comp.choice == "blue-throat" || human.choice == "blue-throat" && comp.choice == "yellow-throat" || human.choice == "yellow-throat" && comp.choice == "orange-throat"
      human.name
    else
      comp.name 
    end
  end
end

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
    elsif (human.choice == "Ultradominant orange-throat" && comp.choice == "Dominant blue-throat") || (human.choice == "Dominant blue-throat" && comp.choice == "Yellow-throated sneaker") || (human.choice == "Yellow-throated sneaker" && comp.choice == "Ultradominant orange-throat")
      "Human wins"
    else
      "Comp wins"
    end
  end
end

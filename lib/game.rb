class Game

  attr_reader :p1, :p2
  
  OPTION = {"rock" => 1, "spock" => 2, "paper" => 3, "lizard" => 4, "scissors" => 5}

  def initialize(p1, p2 = "AI")
    @p1 = p1
    @p2 = p2
  end

  def self.create(p1, p2)
    @game = Game.new(p1, p2)
  end

  def self.instance
    @game
  end

  def p1_choice(selection)
    @p1_selection = OPTION[selection]
  end

  def randomiser
    @comp_selection = OPTION[OPTION.keys.sample]
  end

  def compare
    @result = @p1_selection - @comp_selection
  end

  def message
    case @result % 5
    when 1,2
      'You win'
    when 3,4
      "You lose"
    when 0
      "It's a tie"
    end
  end


end

game = Game.new("pinky", "the brain")
p game.p1_choice('rock')
p game.randomiser
p game.compare
p game.message
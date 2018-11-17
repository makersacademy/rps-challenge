class Game

  attr_reader :p1, :p2

  def initialize(p1,p2)
    @p1 = p1
    @p2 = p2
  end

  def result
    if @p1.choice == @p2.choice
      "Draw!"
    elsif
      @p1_guess == "scissors" && @p2_guess == "paper" ||
      @p1_guess == "scissors" && @p2_guess == "lizard" ||
      @p1_guess == "paper" && @p2_guess == "rock" ||
      @p1_guess == "paper" && @p2_guess == "spock" ||
      @p1_guess == "rock" && @p2_guess == "lizard" ||
      @p1_guess == "rock" && @p2_guess == "scissors" ||
      @p1_guess == "lizard" && @p2_guess == "spock" ||
      @p1_guess == "lizard" && @p2_guess == "paper" ||
      @p1_guess == "spock" && @p2_guess == "scissors" ||
      @p1_guess == "spock" && @p2_guess == "rock"
      "#{@p1.name} wins!"
    else
      "#{@p2.name} wins!"
    end
  end

  def self.create(p1, p2)
    @game = Game.new(p1, p2)
  end

  def self.instance
    @game
  end
end

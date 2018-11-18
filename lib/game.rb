class Game

  attr_reader :p1, :p2

  def initialize(player1, player2)
    @p1 = player1
    @p2 = player2
  end

  def result
    if @p1.choice == @p2.choice
      "Draw!"
    elsif
      @p1.choice == "scissors" && @p2.choice == "paper" ||
      @p1.choice == "scissors" && @p2.choice == "lizard" ||
      @p1.choice == "paper" && @p2.choice == "rock" ||
      @p1.choice == "paper" && @p2.choice == "spock" ||
      @p1.choice == "rock" && @p2.choice == "lizard" ||
      @p1.choice == "rock" && @p2.choice == "scissors" ||
      @p1.choice == "lizard" && @p2.choice == "spock" ||
      @p1.choice == "lizard" && @p2.choice == "paper" ||
      @p1.choice == "spock" && @p2.choice == "scissors" ||
      @p1.choice == "spock" && @p2.choice == "rock"
      "#{@p1.name} wins!"
    else
      "#{@p2.name} wins!"
    end
  end

  def add_player(player)
    @p2 = player
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end
end

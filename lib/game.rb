class Game
  attr_reader :player_1, :player_2, :winner, :loser

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def round
    return if @player_1.choice == @player_2.choice

    if @player_1.choice == "rock"
      check("scissors")
    elsif @player_1.choice == "paper"
      check("rock")
    elsif @player_1.choice == "scissors"
      check("paper")
    end
  end

  private
  def check(choice)
    if @player_2.choice == choice
       @winner = @player_1
       @loser = @player_2
     else
       @winner = @player_2
       @loser = @player_1
     end
  end
end

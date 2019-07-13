class Game
  @instance = nil
  attr_accessor :player1, :player2
  attr_reader :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = nil
  end

  def self.create_instance(player1, player2)
    @instance = Game.new(player1, player2)
  end

  def self.instance
    @instance
  end

  def assign_winner
    @winner = "Congratulations, you won"
  end

end

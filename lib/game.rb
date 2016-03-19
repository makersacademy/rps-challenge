class Game

  attr_reader :player1, :player2

  def self.create(player1_name:, player2_name:, player_class:)

    player1 = player_class.new(player1_name)
    player2 = player_class.new(player2_name)
    @instance = self.new(player1:player1, player2:player2)

  end

  def self.instance
    @instance
  end


  def initialize(player1:, player2:)
    @player1 = player1
    @player2 = player2
  end

end

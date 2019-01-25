class Round

  def self.create(player)
    @round = Round.new(player)
  end

  def self.this_round
    @round
  end

  attr_reader :players, :current_turn

  def initialize(player, computer = Player.new("Computer"))
    @players = [player, computer]
    @current_turn = player
  end

  def switch_turn
    @current_turn = @players.select { |player| player != @current_turn }.shift
  end
end

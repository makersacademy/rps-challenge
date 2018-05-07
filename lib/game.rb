class Game

  attr_reader :player_one, :player_two

  def initialize(player1, player2)
    @player_one = player1
    @player_two = player2
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def outcome
    results_matrix = [
      ['draw', 'lose', 'win'],
      ['win', 'draw', 'lose'],
      ['lose', 'win', 'draw']
    ]
    @outcome = results_matrix[@player_one.move.to_i][@player_two.move.to_i]
  end


end

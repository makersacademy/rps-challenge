class GameType

  attr_reader :game

  def initialize
    @game = {}
  end

  def add_scenario(winner, loser)
    raise "It is already added" if scenario_added?(winner, loser)
    @game[winner] = loser
  end

  private

  def scenario_added?(winner, loser)
    game.has_key?(winner) && game[winner] = loser
  end

end

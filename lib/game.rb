require './lib/rps_rules'

class Game
  attr_reader :player_1, :player_2, :winner
  WEAPONS =

  def initialize(player_1, player_2, rules = RpsRules)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
    @rules = rules.new
  end

  def play
    player_2.update_choice if @player_2.choice.nil? || @player_2.choice == ""

    update_winner(@rules.check_rules(player_1.choice, player_2.choice))
    self
  end

  private

  def update_winner(result)
    return @winner = result if result == "draw"
    return result == "win" ? @winner = @player_1 : @winner = @player_2
  end
end

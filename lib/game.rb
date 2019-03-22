require './lib/rules'

class Game
  attr_reader :player_1, :player_2, :winner
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
  end

  def play(rules = Rules.new)
    player_2.update_choice if @player_2.choice.nil? || @player_2.choice == ""

    @rules = rules.new.list

    @rules.each do |outcome|
      if rule_matched?(outcome, @player_1, @player_2)
        update_winner(outcome)
      end
    end
    self
  end

  private

  def rule_matched?(outcome, player_1, player_2)
    outcome[:player_1] == player_1.choice && outcome[:player_2] == player_2.choice
  end

  def update_winner(outcome)
    if outcome[:result] != "draw"
      @winner = instance_variable_get(outcome[:result])
    else
      @winner = outcome[:result]
    end
  end
end

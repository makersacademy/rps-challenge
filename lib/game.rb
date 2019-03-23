require './lib/rules'

class Game
  attr_reader :player_1, :player_2, :winner

  def initialize(player_1, player_2, rules = Rules)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
    @rules = rules.new.list
  end

  def play
    player_2.update_choice if @player_2.choice.nil? || @player_2.choice == ""

    @rules.each do |outcome|
      if rule_matched?(outcome, @player_1.choice, @player_2.choice)
        update_winner(outcome[:result])
      end
    end
    self
  end

  private

  def rule_matched?(outcome, choice_1, choice_2)
    outcome[:player_1] == choice_1 && outcome[:player_2] == choice_2
  end

  def update_winner(result)
    return @winner = instance_variable_get(result) if result != "draw"
    @winner = result
  end
end

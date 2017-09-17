require_relative 'player.rb'

class Game

  attr_reader :players, :weapons, :scenarios_v_points, :result, :current_scenario, :point_result

  def initialize
    @scenarios_v_points = { ['Rock', 'Paper'] => -1,
                   ['Rock', 'Scissors'] => 1,
                   ['Paper', 'Scissors'] => -1,
                   ['Paper', 'Rock'] => 1,
                   ['Scissors', 'Rock'] => -1,
                   ['Scissors', 'Paper'] => 1
                  }
    @result = 'default value'
  end

  def calculating_winner(first_player, second_player)

    @current_scenario = [first_player.weapon, second_player.weapon]

    @result = 'Draw! Shall we play again?' unless a_possible_scenario?

    scenarios_v_points.find do |potential_scenario, point_value| if potential_scenario == current_scenario

         first_player.point_change('add', point_value)
         second_player.point_change('subtract', point_value)
         @result = "#{point_value} point for #{first_player.name}! Shall we play again?"

      end

    end

  end

  end

private

def a_possible_scenario?
  @scenarios_v_points.keys.include? @current_scenario

end

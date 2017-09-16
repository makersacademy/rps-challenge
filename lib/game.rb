require_relative 'player.rb'

class Game

  attr_reader :players, :weapons, :scenarios_v_points, :result, :current_scenario, :point_result

  def initialize(players)
    @players = players
    @scenarios_v_points = { ['rock', 'paper'] => -1,
                   ['rock', 'scissors'] => 1
                  }
    @result = 'default value'
  end

  def calculating_winner(first_player, second_player)

    @current_scenario = [first_player.weapon, second_player.weapon]

    scenarios_v_points.keys.each do |potential_scenario| if potential_scenario == current_scenario

    scored_point_value = scenarios_v_points[potential_scenario]

    first_player.point_change('add', scored_point_value)
    second_player.point_change('subtract', scored_point_value)
    @result = "#{scored_point_value} point for #{first_player.name}!"
    break
  else
    @result = "Draw!"
          end
    end

  end

end

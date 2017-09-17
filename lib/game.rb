require_relative 'player.rb'

class Game

  attr_reader :players, :weapons, :scenarios_v_points, :result, :current_scenario, :point_result

  def initialize(players)
    @players = players
    @scenarios_v_points = { ['Rock', 'Paper'] => -1,
                   ['Rock', 'Scissors'] => 1
                  }
    @result = 'default value'
  end

  def calculating_winner(first_player, second_player)

    @current_scenario = [first_player.weapon, second_player.weapon]

    scenarios_v_points.keys.each do |potential_scenario| if potential_scenario == current_scenario

                                                           scored_point_value = scenarios_v_points[potential_scenario]

                                                           first_player.point_change('add', scored_point_value)
                                                           second_player.point_change('subtract', scored_point_value)
                                                           @result = "#{scored_point_value} point for #{first_player.name}! Shall we play again?"
                                                           break
  else
    @result = "Draw! Shall we play again?"
          end
    end

  end

end

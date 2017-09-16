require_relative 'player.rb'

class Game

  attr_reader :players, :weapons, :conditions, :result, :current_scenario, :point_result

  def initialize(players)
    @players = players
    @conditions = {['rock', 'paper'] => -1,
                   ['rock', 'scissors'] => 1
                  }
    @result = 'default value'
  end



  def calculating_winner(first_player, second_player)

    @current_scenario = [first_player.weapon, second_player.weapon]

    conditions.keys.each do |potential_scenario| if potential_scenario == current_scenario

    scored_point = conditions[potential_scenario]
                                first_player.point_change('add', scored_point)
                                second_player.point_change('subtract', scored_point)
                                @result = "#{scored_point} point for #{first_player.name}!"
                                end
                         end

  end


end

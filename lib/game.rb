require_relative 'player.rb'

class Game

  attr_reader :players, :weapons, :scenarios_v_points,
  :result, :current_scenario, :point_result, :round_score

  def initialize
    @scenarios_v_points = { ['Rock', 'Paper'] => -1,
                   ['Rock', 'Scissors'] => 1,
                   ['Paper', 'Scissors'] => -1,
                   ['Paper', 'Rock'] => 1,
                   ['Scissors', 'Rock'] => -1,
                   ['Scissors', 'Paper'] => 1,
                  }
    @result = 'default value'
    @round_score = 0
  end

  def calculating_winner(first_player, second_player)

    return @result = draw if first_player.weapon == second_player.weapon

    scenarios_v_points.find do |potential_scenario, point_value|
      point_allocation(first_player, second_player, point_value) if find_a_win(first_player, second_player, potential_scenario)
    end

    return @result = draw if round_score.zero?

    @result = win(first_player)

  end

  def play_over_multiple(array)
    pair_off = array.combination(2).to_a
    pair_off.each { |set| calculating_winner(*set) }
  end

private

  def a_possible_scenario?
    @scenarios_v_points.keys.include? @current_scenario
  end

  def draw
    'Draw! Shall we play again?'
  end

  def win(first_player)
    "#{@round_score} point for #{first_player.name}! Shall we play again?"
  end

  def point_allocation(first_player, second_player, point_value)
    first_player.point_change('add', point_value)
    second_player.point_change('subtract', point_value)
    @round_score += point_value
  end

  def find_a_win(first_player, second_player, potential_scenario)
    @current_scenario = [first_player.weapon, second_player.weapon]
    potential_scenario == current_scenario
  end

end

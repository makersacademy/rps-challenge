require_relative 'turn'

class Play
  attr_reader :players, :turn, :result, :victory_message

  def initialize(player_1, player_2, turn_type = Turn)
    @players = [player_1, player_2]
    @turn = turn_type.new
    @result = {}
    @victory_message = ''
  end

  def play(choice_1, choice_2)
    run_turn(choice_1, choice_2)
    add_message
  end

  private

  def run_turn(choice_1, choice_2)
    result[players[0]] = turn.run(choice_1)
    result[players[1]] = turn.run(choice_2)
  end

  def add_message
    @victory_message = victory_calculator
  end

  def victory_calculator
    calculator = {
      'rock' => { 'rock' => 'draw', 'paper' => 'lose', 'scissors' => 'win' },
      'paper' => { 'rock' => 'win', 'paper' => 'draw', 'scissors' => 'lose' },
      'scissors' => { 'rock' => 'lose', 'paper' => 'win', 'scissors' => 'draw' }
    }

    player_1_result = result[players[0]]
    player_2_result = result[players[1]]

    if calculator[player_1_result][player_2_result] == 'draw'
      "It's a draw"
    elsif calculator[player_1_result][player_2_result] == 'win'
      "#{players[0]} won!"
    elsif calculator[player_1_result][player_2_result] == 'lose'
      "#{players[1]} won!"
    end
  end
end

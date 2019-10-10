require_relative 'player'
class Game

  attr_reader :current_turn
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def hit(player_1, player_2)
    if player_1.choice == "rock" && player_2.choice == "scissor"
      player_2.reduce_point
    elsif player_1.choice == "scissor" && player_2.choice == "rock"
      player_2.reduce_point
    elsif player_1.choice == "scissor" && player_2.choice == "paper"
      player_2.reduce_point
    elsif player_1.choice == "paper" && player_2.choice == "scissor"
      player_1.reduce_point
    elsif player_1.choice == "rock" && player_2.choice == "paper"
      player_2.reduce_point
    elsif player_1.choice == "paper" && player_2.choice == "rock"
      player_2.reduce_point
    else
      player_1.draw
      player_2.draw
    end
    player_1.clear_choice
    player_2.clear_choice
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(the_player)
    @players.reject { |player| player == the_player }.first
  end

  private

  attr_reader :players

end

require_relative 'player'
require_relative 'computer'

class Game

WEAPONS = [:rock, :paper, :scissors]

attr_reader :player, :computer, :player_score, :computer_score, :winner_of_three, :current_round_result

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player
    @computer = computer
    @player_score = 0
    @computer_score = 0
    @winner_of_three = nil
    @current_round_result
  end

  def weapon_v_weapon
    result = RULES[@player.weapon][@computer.weapon]
    add_win_to_score(result)
    @current_round_result = result
  end

  def add_win_to_score(result)
    @player_score += 1 if result == :win
    @computer_score += 1 if result == :lose
  end

  def best_of_three_winner
    @winner_of_three = @player if player_score == 3
    @winner_of_three = @computer if computer_score == 3
  end

private

RULES = {
      rock:     { rock: :draw, paper: :lose, scissors: :win },
      paper:    { rock: :win, paper: :draw, scissors: :lose },
      scissors: { rock: :lose, paper: :win, scissors: :draw}
    }

end

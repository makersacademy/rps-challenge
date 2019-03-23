require_relative 'weapon'

class Result

  def initialize(player_1_choice, player_2_choice)
    @player_1_choice = player_1_choice
    @player_2_choice = player_2_choice
  end

  def self.run(player_1_choice, player_2_choice)
    new(player_1_choice, player_2_choice).run
  end

  def run
    return :draw if @player_1_choice == @player_2_choice
    return :win if player_1_wins?
    return :lose
  end

  def player_1_wins?
    return true if Weapon::RULES[@player_1_choice.to_sym] == @player_2_choice.to_sym
    false
  end

end

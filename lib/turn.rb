
class Turn
  GAME_RULES = {
    Rock: { Rock: :Draw, Paper: :Lose, Scissors: :Win },
    Paper: { Rock: :Win, Paper: :Draw, Scissors: :Lose },
    Scissors: { Rock: :Lose, Paper: :Win, Scissors: :Draw }
  }
  attr_reader :player_name, :player_option, :opponent_option

  def initialize(options)
    @player_name = options[:player_name]
    @player_option = options[:player_option]
    @opponent_option = options[:opponent_option]
  end

  def win?
    result == :Win
  end

  def lose?
    result == :Lose
  end

  def draw?
    result == :Draw
  end


  private

  def result
    return if @opponent_option.nil?
    GAME_RULES[@player_option][@opponent_option]
  end
end

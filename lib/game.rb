
class Game
  DEFAULT_SCORE = 0
  DEFAULT_NAME = 'Bot'
  RULES = [
    Rock: { Scissors: :win, Rock: :draw, Paper: :lose },
    Paper: { Rock: :win, Paper: :draw, Scissors: :lose },
    Scissors: { Rock: :lose, Paper: :win, Scissors: :draw }
  ]
  attr_accessor :score
  attr_reader :player, :name, :computerchose

  def initialize(player, player_choice = nil)
    @score = DEFAULT_SCORE
    @player = player
    @name = DEFAULT_NAME
    @player_choice = player_choice
  end

  def random_choice
    [:Rock, :Paper, :Scissors].sample
  end

  def computerchose
    @computer_choice = random_choice
  end

  def choice
    if @player_choice
      "#{@player.name.capitalize} chose #{@player_choice} #{@name} chose #{@computer_choice}"
    end
  end

  def message
    case result
    when 'win'
      @player.score += 10
      "Congratulation #{player.name.capitalize} won!!"
    when 'lose'
      @score += 10
      "Sorry #{@name} won! Better luck next time"
    when 'draw'
      'It was a Draw'
    else
      'Make a move'
    end
  end

  def result
    new_array = []
    if @player_choice
      RULES.each do |each_choice|
        new_array << each_choice[@player_choice.to_sym][@computer_choice].to_s
      end
    end
    new_array[0]
  end
end

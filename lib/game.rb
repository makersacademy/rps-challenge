require_relative 'score'

class Game

  attr_reader :player_1, :player_2, :p1_selection, :comp_selection, :p1_score, :p2_score

  OPTION = ["rock", "spock", "paper", "lizard", "scissors"]

  def initialize(player_1, player_2 = "Computer", score_1 = Score.create, score_2 = Score.create)
    @player_1 = player_1
    @player_2 = player_2
    @p1_score = score_1
    @p2_score = score_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def p1_choice(selection)
    @p1_selection = selection
  end

  def randomiser
    @comp_selection = OPTION.sample
  end

  def compare
    @result = convert(@p1_selection) - convert(@comp_selection)
  end

  def message
    case @result % 5
    when 1, 2
      @p1_score.increase
      "#{@player_1} wins"
    when 3, 4
      @p2_score.increase
      "#{@player_2} wins"
    when 0
      "It's a tie"
    end
  end 

  def reset
    @p1_score.reset
    @p2_score.reset
    @p1_selection = nil
  end
  
  private
  
  def convert(option)
    OPTION.find_index(option) + 1
  end 

end

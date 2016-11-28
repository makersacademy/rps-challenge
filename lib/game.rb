require_relative 'player'
require_relative 'result'
require_relative 'computer'

class Game

  attr_reader :player_1, :player_2,  :choices, :computer, :result

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @choices = []
    @result = Result.new
  end

  def choice
    player_1_choice = player_1.users_choice
    player_2_choice = player_2.users_choice
    choices.push([player_1_choice, player_2_choice])
  end

  def players_choices
    result.responses(choices.last)
  end

end

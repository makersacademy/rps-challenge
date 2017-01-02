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
    @choices.push([player_1_choice, player_2_choice])
  end

  def winner
      return player_1.player_name if player_1_winner?
      return player_2.player_name if player_2_winner?
      return result.responses(choices.last) if draw?
  end

private

  def player_1_winner?
    player_1.users_choice == result.responses(choices.last)
  end

  def player_2_winner?
    player_2.users_choice == result.responses(choices.last)
  end

  def draw?
    player_1.users_choice == player_2.users_choice
  end
end

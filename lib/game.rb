require_relative 'computer'
require_relative 'rules'

class Game
  attr_reader :player, :opponent, :choice, :player_1_choice
  include Rules

  def initialize(player, opponent = Computer.new)
    @player = player
    @opponent = opponent
  end

  def self.create(player, opponent = Computer.new)
    @current_game = Game.new(player, opponent)
  end

  def self.instance
    @current_game
  end

  def store_choice(player_1_choice)
    @player_1_choice = player_1_choice
    return '/two_play_too'
  end

  def result(player_choice, choice = opponent.choice)
    @choice = choice
    return "Drew" if player_choice == choice 
    return "Won" if Rules::RULES[player_choice].include?(choice)
    return "Lost" if Rules::RULES[choice].include?(player_choice)
  end

  def two_player_result(player_1_choice, player_2_choice)
    return "It's a Draw!" if player_1_choice == player_2_choice
    return "#{@player.name} Won!" if Rules::RULES[player_1_choice].include?(player_2_choice)
    return "#{@opponent.name} Won!" if Rules::RULES[player_2_choice].include?(player_1_choice)
  end
end

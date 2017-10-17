require_relative 'rules'

class Game
  attr_reader :choice, :player_1_choice
  include Rules

  WEAPONS = %w(rock paper scissors lizard spock)

  def initialize(players)
    @players = players
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def self.create(players)
    @current_game = Game.new(players)
  end

  def self.instance
    @current_game
  end

  def result_view(player_choice, choice = nil) 
    one_player_game? ? result(player_choice) : two_player_result(player_choice, choice)
  end

  def result(player_choice, choice = WEAPONS[rand(4)])
    @choice = choice
    return :Drew if player_choice == choice 
    return :Won if Rules::RULES[player_choice].include?(choice)
    return :Lost if Rules::RULES[choice].include?(player_choice)
  end

  def two_player_result(player_1_choice, player_2_choice)
    return "It's a Draw!" if player_1_choice == player_2_choice
    return "#{player_1} Won!" if Rules::RULES[player_1_choice].include?(player_2_choice)
    return "#{player_2} Won!" if Rules::RULES[player_2_choice].include?(player_1_choice)
  end

  private 

  def one_player_game?
    !player_2
  end

end

require_relative 'player'
require 'forwardable'

class Game
  extend Forwardable

  attr_reader :players, :choices

  def_delegator :player1, :set_name, :set_player_name

  def_delegator :player2, :name, :player2_name
  def_delegator :player1, :name, :player1_name

  def_delegator :player1, :choice, :player1_choice
  def_delegator :player2, :choice, :player2_choice

  def initialize(player1 = Player.new, player2 = Player.new)
    @players = [player1, player2]
    @choices = [:rock, :paper, :scissors]
  end

  def set_num_players(num)
    @num_players = num
  end

  def set_player_names(player1_name, player2_name)
    player2_name ||= 'Computer'
    player1.set_name(player1_name)
    player2.set_name(player2_name)
  end

  def set_choice(choice)
    player1_choice.nil? ? player1.set_choice(choice) : player2.set_choice(choice)
  end

  def restart
    @players.each { |player| player.reset }
  end

  def winner
    return nil if player1_choice.nil?
    set_computer_choice if @num_players == 1
    p @num_players
    return nil if player2_choice.nil?
    return 'Nobody' if draw?
    index = @choices.index(player1_choice)
    (@choices[index-1] == player2_choice) ? player1_name : player2_name
  end

  private

  def set_computer_choice
    player2.set_choice
    p 'setting computer choice'
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end

  def draw?
    player1_choice == player2_choice
  end

end

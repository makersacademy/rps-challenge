require_relative 'player'
require 'forwardable'

class Game
  extend Forwardable

  attr_reader :players, :choices

  def_delegator :player1, :set_name, :set_player_name
  def_delegator :player1, :set_choice, :set_player_choice
  def_delegator :player1, :name, :player_name
  def_delegator :player1, :choice, :player_choice

  def_delegator :player2, :choice, :computer_choice

  def initialize(player1 = Player.new, player2 = Player.new)
    @players = [player1, player2]
    @choices = [:rock, :paper, :scissors]
  end

  def winner
    return nil if player_choice.nil?
    set_computer_choice
    return 'Nobody' if draw?
    index = @choices.index(player_choice)
    (@choices[index-1] == computer_choice) ? player_name : 'Computer'
  end

  private

  def_delegator :player2, :set_choice, :set_computer_choice

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end

  def draw?
    player_choice == computer_choice
  end

end

require_relative 'player'
require_relative 'computer'

class Game
  include Utilities

  attr_reader :player_1, :player_2, :player_1_won

  def initialize(player_1, player_2 = Computer.new, hands = Hands.new)
    @player_1 = player_1
    @player_2 = player_2
    @hands = hands
  end

  def self.create(player_1, player_2 = Computer.new)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def player_1_selection
    return nil if @player_1_selection == nil
    titleize(@player_1_selection)
  end

  def player_2_selection
    titleize(@player_2_selection)
  end

  def player_1_select(selection)
    @player_1_selection = selection
    computer_select if playing_computer?
  end

  def player_2_select(selection)
    @player_2_selection = selection
  end

  def playing_computer?
    player_2.is_a? Computer
  end

  def the_winner
    return :draw if draw?
    compare_hands ? :won : :lost
  end

  private
  attr_reader :hands

  def computer_select
    @player_2_selection = player_2.hand
  end

  def compare_hands
    hands.player_1_win?(player_1_selection, player_2_selection)
  end

  def draw?
    player_1_selection == player_2_selection
  end

end

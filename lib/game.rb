require_relative 'player'
require_relative 'comp'

class Game
  def self.create(player_1_name:, player_2_name: nil)
    @game = Game.new(player_1_name: player_1_name, player_2_name: player_2_name)
  end

  def self.instance
    @game
  end

  def initialize(player_1_name:, player_2_name: nil, player_class: Player, comp_class: Comp)
    @player_1 = player_class.new(player_1_name)
    @player_2 = player_2_name.nil? ? comp_class.new : player_class.new(player_2_name)
    @multiplayer = !player_2_name.nil?
  end

  attr_reader :player_1, :player_2

  def multiplayer?
    @multiplayer
  end

  def multiplayer_turn_1?
    @multiplayer && @player_1.choice.nil?
  end

  def multiplayer_turn_2?
    @multiplayer && !@player_1.choice.nil?
  end

  OPTIONS = %w[Rock Lizard Spock Scissors Paper]
  
  def winner
    same_choice? ? nil : player_1_wins? ? @player_1 : @player_2
  end
  
  private

  def same_choice?
    @player_1.choice == @player_2.choice
  end

  def player_1_position
    OPTIONS.index(@player_1.choice)
  end

  def player_1_win_cons
    [OPTIONS[player_1_position - 2], OPTIONS[player_1_position - 4]]
  end

  def player_1_wins?
    player_1_win_cons.include?(@player_2.choice)
  end
end

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
    @winner = nil
  end

  attr_reader :winner, :player_1, :player_2

  def multiplayer?
    @multiplayer
  end

  def multiplayer_turn_1?
    @multiplayer && @player_1.choice.nil?
  end

  def multiplayer_turn_2?
    @multiplayer && !@player_1.choice.nil?
  end

  def decide_winner
    case @player_1.choice
    when 'Rock'
      player_1_chose_rock
    when 'Paper'
      player_1_chose_paper
    when 'Scissors'
      player_1_chose_scissors
    end
  end

  private

  def player_1_chose_rock
    case @player_2.choice
    when 'Paper'
      @winner = @player_2
    when 'Scissors'
      @winner = @player_1
    end
  end

  def player_1_chose_paper
    case @player_2.choice
    when 'Scissors'
      @winner = @player_2
    when 'Rock'
      @winner = @player_1
    end
  end

  def player_1_chose_scissors
    case @player_2.choice
    when 'Rock'
      @winner = @player_2
    when 'Paper'
      @winner = @player_1
    end
  end
end

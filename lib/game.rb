# Game class model layer
require './lib/computer'
require './lib/player'

class Game
  attr_reader :player, :player2, :option

  WIN_OPTIONS = { rock: :scissors, paper: :rock, scissors: :paper }

  def initialize(player, player2 = Computer.new)
    @option = nil
    @player = player
    @player2 = player2
  end

  def self.create=(value)
    @instance = value
  end

  def self.instance
    @instance
  end

  def choice(option)
    @option = option.to_sym # returns OPTIONS value
  end

  def random_pick
    key_range = []
    WIN_OPTIONS.keys.each do |key| # returns OPTIONS key
      key_range << key.to_s
    end
    key_range.sample.to_sym
  end

  def result?
    if WIN_OPTIONS[random_pick] == @option
      :loss
    elsif random_pick == @option
      :draw
    else
      :win
    end
  end

  def reset_choice
    @option = nil
  end

end

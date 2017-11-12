# Game class model layer
require './lib/computer'
require './lib/player'

class Game
  attr_reader :player, :player2, :option, :at_option, :at_random

  WIN_OPTIONS = { rock: :scissors, paper: :rock, scissors: :paper }

  def initialize(player, player2 = Computer.new)
    @at_option = nil
    @at_random = nil
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
    @at_option = option.to_sym # returns OPTIONS value
  end

  def random_pick
    key_range = []
    WIN_OPTIONS.keys.each do |key| # returns OPTIONS key
      key_range << key.to_s
    end
    @at_random = key_range.sample.to_sym
  end

  def result?
    if WIN_OPTIONS[random_pick] == @at_option
      :loss
    elsif random_pick == @at_option
      :draw
    else
      :win
    end
  end
end

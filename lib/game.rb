# frozen_string_literal: true

require './lib/player.rb'

class Game
  attr_accessor :player, :comp

  WIN = {
    rock: %w[lizard scissors],
    paper: %w[rock spock],
    scissors: %w[paper lizard],
    lizard: %w[paper spock],
    spock: %w[scissors rock]
  }.freeze

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def bot
    @bot_move = %w[rock paper scissors lizard spock].sample
  end

  def result(_player_move)
    if WIN[@player.move.to_sym].include?(@bot_move)
      "#{@player.name} is a winner!!!"
    elsif @player.move == @bot_move
      "It's a draw"
    else
      'Computer won!'
    end
  end
end

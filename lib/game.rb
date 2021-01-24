# frozen_string_literal: true

require_relative 'player'

# The Game class is the main game class.
class Game

  attr_reader :player_1, :player_2, :game_mode

  DEFAULT_PLAYER = nil

  def initialize(game_mode, player_1, player_2 = DEFAULT_PLAYER)
    @game_mode = game_mode
    @player_1 = player_1
    @player_2 = player_2
  end

end

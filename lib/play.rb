# frozen_string_literal: true

require_relative 'player'

# Each game session is an instance of the Play class.
class Play

  attr_reader :player_1, :player_2, :game_mode

  DEFAULT_PLAYER = nil

  def initialize(play_mode, player_1, player_2 = DEFAULT_PLAYER)
    @play_mode = play_mode
    @player_1 = player_1
    @player_2 = player_2
  end

end

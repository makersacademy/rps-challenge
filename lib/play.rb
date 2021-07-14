# frozen_string_literal: true

require_relative 'bot_move'
require_relative 'outcome'
require_relative 'player'

# Each game session is an instance of the Play class.
class Play
  attr_reader :mode, :player_1, :player_2

  def initialize(mode, player_1, player_2)
    @mode = mode
    @player_1 = player_1
    @player_2 = player_2
  end
end

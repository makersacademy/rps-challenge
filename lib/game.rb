# frozen_string_literal: true

class Game
  attr_reader :player_1, :player_2
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = new(player_1, player_2)
  end

  def self.instance
    @game
  end
end

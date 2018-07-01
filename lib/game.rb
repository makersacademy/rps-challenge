# frozen_string_literal: true

# Understands managing the winning process
class Game

  attr_accessor :player_one, :player_two
  attr_reader :session

  def self.set_session
    @session = Game.new
  end

  def self.session
    @session
  end
end

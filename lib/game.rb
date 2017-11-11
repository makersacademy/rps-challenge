require_relative 'gameitem'

class Game
  attr_reader :player

  def self.instance
    @@instance
  end

  def initialize(player_name, options = [
    GameItem.new('rock'),
    GameItem.new('paper'),
    GameItem.new('scissors')])

    @player     = player_name
    @options    = options
    @@instance  = self
  end

  def select_player_choice(choice)
    @options.select { |rps| rps.name == choice }.pop
  end

  def ai_choice
    @options.sample
  end

end

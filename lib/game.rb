require_relative 'gameitem'

class Game
  attr_reader :player_name, :player_choice, :ai_choice

  def self.instance
    @@instance
  end

  def initialize(player_name, options = [
    GameItem.new('rock'),
    GameItem.new('paper'),
    GameItem.new('scissors')])

    @player_name = player_name
    @options     = options
    @@instance   = self
  end

  def select_player_choice(choice)
    @player_choice = @options.select { |rps| rps.name == choice }.pop
  end

  def set_ai_choice
    @options.sample
  end

  def decide_winner(player_choice)
    @ai_choice = set_ai_choice
    player_choice.beats?(@ai_choice)
  end

end

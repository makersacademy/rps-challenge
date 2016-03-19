class Game

  attr_reader :players

  def self.create(player_klass: , player_name:)
    @instance = self.new(player_klass: player_klass, player_name: player_name)
  end
  def self.current_game
    @instance
  end
  def initialize(player_klass: , player_name: )
    @player_class = player_klass
    player = @player_class.new(player_name)
    @players = Array.new.push(player)
  end
  def self.reset
    @instance = nil
  end
end

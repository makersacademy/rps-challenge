require_relative 'player'

class Game
  attr_reader :players

  def initialize(player_class = Player)
    @players = []
    @player_class = player_class
  end

  def add_player(player_name, computer_controlled = false)
    @players << @player_class.new(player_name, computer_controlled)
  end

  def add_computer_opponents
    add_player('Computer', true) if @players[1].nil?
  end

  def number_of_players
    @players.count
  end

  def reset
    @players = []
  end

  def compare_choices
    @players.each do |player|
      puts "#{player.name}: #{player.choice.capitalize}"
    end
  end

  def self.instance
    @game ||= Game.new
  end
end

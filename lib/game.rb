class Game

  attr_reader :player_name, :opposition_choice
  attr_accessor :choice

  def initialize(player_name)
    @player_name = player_name
    @choice = nil
    @opposition_choice = nil
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def choose_opponents_choice
    @opposition_choice = random_choice
  end

  private

  def random_choice
    ["rock","paper","scissors"].sample
  end

end

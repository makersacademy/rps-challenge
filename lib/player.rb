

class Player
  attr_reader :name
  attr_accessor :pokemon

  def initialize(name)
    @name = name
    @pokemon = ""
  end

  def self.create(player_name)
    @player = Player.new(player_name)
  end

  def self.read
    @player
  end

  def pokemon_selector
    ["CHARMANDER", "SQUIRTLE", "BULBASAUR"].sample
  end

end

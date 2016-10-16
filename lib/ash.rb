class Ash

  attr_reader :pokemon

  def initialize
    @pokemon = ""
  end

  def self.create
    @ash = Ash.new
  end

  def self.read
    @ash
  end

  def self.pokemon
    @pokemon
  end

  def pokemon_selector
    @pokemon = ["CHARMANDER", "SQUIRTLE", "BULBASAUR"].sample
  end

end

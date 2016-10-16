class Ash

  attr_accessor :pokemon

  def initialize
    @pokemon = ""
  end

  def self.create
    @ash = Ash.new
  end

  def self.read
    @ash
  end

  def pokemon_selector
    @pokemon = ["CHARMANDER", "SQUIRTLE", "BULBASAUR"].sample
  end

end

require_relative "weapons"

class TheGame

  include Weapons

  attr_reader :internet_choice, :player_choice, :player_name

  def initialize name, player_choice, internet_choice
    @player_name = name
    @internet_choice = internet_choice.to_sym
    @player_choice = player_choice.to_sym
  end

  def self.create name, player, internet
    @game = TheGame.new name, player, internet
  end

  def self.instance
    @game
  end

  def the_winner
    result = ["A DRAW!", "THE INTERNET, BOOO...", "YOU ARE #{self.player_name.upcase}!"]
    result[WEAPONS.index(player_choice) - WEAPONS.index(internet_choice) % 3]
  end

end

require_relative 'player.rb'
require_relative 'weapons.rb'


class Game

  def self.create(player_1)
    @game = Game.create(player_1)
  end

  def self.instance
    @game
  end

  attr_reader :player_1, :player_2, :selections, :weapons

  def initialize(player_1, player_2 = "Computer", player_klass = Player, weapons_klass = Weapons)

    @player_1 = player_klass.new(player_1)
    @player_2 = player_klass.new(player_2)
    @selections = {}
    @weapons = weapons_klass.new
    @score = []


  end

  def player_1_select(selection)
    @selections = {selection.downcase.to_sym => nil}
  end

  def computer_select
    computer_selection = weapons.weapons.sample
    @selections[@selections.keys.first] = computer_selection #:paper (Use paper to pass tests - need to stub)
  end

  def result
    @score << self.weapons.rules(@selections)
  end

end

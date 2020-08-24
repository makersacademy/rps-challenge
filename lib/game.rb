require_relative 'player'
require_relative 'computer'
require_relative 'weapon'

class Game

  attr_reader :players, :player_choice, :computer_choice

  @instance = nil

  def initialize(player = Player.new(:name), weapon = Weapon.new, computer = Computer.new)
    @player = player
    @weapon = weapon
    @computer = computer
    @players  = {player: @player}
    @player_choice = :none
    @computer_choice = :none
    self.class.instance = self
  end

  def self.instance
    @instance
  end

  def self.instance=(something)
    @instance = something
  end

  def player_name
    @players[:player].name
  end

  def players_choice(choice)
    @player_choice = choice.to_sym
  end

  def computer_choice
    @computer_choice = @computer.random_weapon
  end

  def result
    @weapon.who_wins(player_choice, computer_choice)
  end
end

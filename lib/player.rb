require_relative './weapons.rb'

class Player
  COMPUTER_NAME = 'Computer - Hal'
  attr_reader :name, :choice, :weapons

  def initialize(name: nil, weapons: Weapons.new)
    @computer = !name
    @name = name || COMPUTER_NAME
    @weapons = weapons
  end

  def computer?
    @computer
  end

  def make_move(choice)
    raise "This is not a valid move" unless @weapons.available?(choice)
    @choice = choice
  end

  def computer_move
    @choice = @weapons.random_select
  end

end

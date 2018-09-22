class Player
  require_relative './weapons.rb'

  attr_reader :name, :choice, :weapons
  COMPUTER_NAME = 'Computer - Hal'

  def initialize(name: nil, weapons: Weapons.new)
    @name = name || COMPUTER_NAME
    @weapons = weapons
    @choice = choice
  end

  def computer?
    @name == COMPUTER_NAME
  end

  def make_move(choice)
    raise "This is not a valid move" unless @weapons.available?(choice)
    @choice = choice
  end

  def computer_move
    @choice = @weapons.random_select
  end

end

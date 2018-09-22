class Player
  require_relative './weapons.rb'

  attr_reader :name, :choice, :weapons
  COMPUTER_NAME = 'Computer - Hal'

  def initialize(name: nil, weapons: Weapons.new)
    @name = name || COMPUTER_NAME
    @weapons = weapons
  end

  def make_move(choice)
    raise "This is not a valid move" unless choice_available?
    @choice = choice
  end

  private

  def choice_available?
    @weapons.available?(choice)
  end

end

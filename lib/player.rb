class Player

  attr_reader :name

  def initialize(name=nil)
    @name = name
  end

  def player_weapon
    gets.chomp
  end

end
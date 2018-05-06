class Game

  attr_reader :player_weapon

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
    @result = nil
  end

  def add_weapon(choice)
    @player_weapon = choice
  end

end

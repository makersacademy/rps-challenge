class Game

  attr_reader :player, :computer, :rulebook

  def initialize(player = Player.new, computer = Computer.new, rulebook = Rulebook.new)
    @player = player
    @computer = computer
    @rulebook = rulebook
  end
end

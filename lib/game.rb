class Game

  attr_reader :player1, :player2

  def initialize(player1, player2 = Player.new('Computer'))
    @player1 = player1
    @player2 = player2
  end

  def selection(player = @player1, selection = selection)
    @player1.selection = selection
  end

end

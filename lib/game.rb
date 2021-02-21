require_relative 'player'
class Game
      attr_reader :player1, :player2

  def initialize(player1 = Player.new('pug'),player2 = Computer.new)
    @player1 = player1
    @player2 = player2
  end

  def result
    

  end
end

class Game

  attr_reader :player1, :player2, :turn

  def initialize(player1:, player2:, turn:)
  	@player1 = player1
  	@player2 = player2
    @turn = turn
  end

  def self.create(player1, player2, turn)
  	@game = Game.new(player1:player1, player2:player2, turn: turn)
  end

  def self.instance
  	@game
  end

  def result(p1, p2)
    if turn.result(p1,p2).start_with?("Player1")
      player1.won_turn
    elsif turn.result(p1,p2).start_with?("Player2")
      player2.won_turn
    end
    turn.result(p1, p2)
  end
end

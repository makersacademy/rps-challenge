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
    outcome = turn.result(p1,p2)
    if outcome[0] == outcome[1]
      "Draw!"
    elsif outcome[0] == p1
      player1.won_turn
      "#{player1.name} won! #{outcome[0]} beats #{outcome[1]}"
    else
      player2.won_turn
      "#{player2.name} won! #{outcome[0]} beats #{outcome[1]}"
    end
  end

end

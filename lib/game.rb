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
    outcome_message = turn.result(p1,p2)
    if outcome_message.start_with?("Player1")
      player1.won_turn
    elsif outcome_message.start_with?("Player2")
      player2.won_turn
    end
    outcome_message
  end
end

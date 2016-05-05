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
    winning_choice = outcome[0].to_s.capitalize
    losing_choice = outcome[1].to_s.capitalize
    if winning_choice == losing_choice
      "Draw!"
    elsif winning_choice == p1.to_s.capitalize
      increase_score(player1)
      "#{player1.name} won!!  #{winning_choice} beats #{losing_choice}"
    else
      increase_score(player2)
      "#{player2.name} won!!  #{winning_choice} beats #{losing_choice}"
    end
  end

  private

  def increase_score(player)
    player.won_turn
  end

end

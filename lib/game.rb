class Game
  attr_reader :player_1, :player_2, :rounds

  def initialize(player_1, player_2, rounds = 3)
    @player_1 = player_1
    @player_2 = player_2
    @rounds = rounds
    @winners = []
  end

  def round_winner
    @rounds += 1

    return "tie" if @player_1.move == @player_2.move
    
    if @player_1.move == "paper"
      @player_2.move == "rock" ? @player_1 : @player_2
    elsif @player_1.move == "scissors"
      @player_2.move == "paper" ? @player_1 : @player_2
    else
      @player_2.move == "scissors" ? @player_1 : @player_2
    end
  end
end

class Game
  attr_reader :player_1, :player_2, :rounds, :round, :winners

  def initialize(player_1, player_2, rounds = 3)
    @player_1 = player_1
    @player_2 = player_2
    @rounds = rounds
    @round = 0
    @winners = []
  end

  def round_winner

    return "tie" if @player_1.move == @player_2.move
    
    if @player_1.move == "paper"
      @player_2.move == "rock" ? @player_1.name : @player_2.name
    elsif @player_1.move == "scissors"
      @player_2.move == "paper" ? @player_1.name : @player_2.name
    else
      @player_2.move == "scissors" ? @player_1.name : @player_2.name
    end
  end

  def save_result
    @winners << round_winner
    @round += 1
  end

  def end?
    @winners.length == rounds
  end

  def find_winner
    if winners.count(player_1.name) == winners.count(player_2.name)
      "tie"
    else
      winners.count(player_1.name) > winners.count(player_2.name) ? player_1.name : player_2.name
    end
  end

  def reset
    @round = 0
    @winners = []
  end
end

require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :p1_move, :p2_move, :winner, :p1_counter, :p2_counter

  WINNING_MOVES = {"rock" => "scissors", "paper" => "rock", "scissors" => "paper"}

  def initialize(player_1)
    @player_1 = player_1
    @player_2 = player_2 || Computer.new
    @p1_move = nil
    @p2_move = nil
    @winner = nil
    @p1_counter = 0
    @p2_counter = 0
  end

  def player_1_selection(p1_move)
    @p1_move = p1_move
  end

  def player_2_selection
    @p2_move = @player_2.random_move
  end

  def result(p1_move, p2_move)
    @winner = rps(p1_move, p2_move)
  end

  def rps(p1_move, p2_move)
    if p1_move == p2_move
      return "It's a Draw!"
    elsif WINNING_MOVES[p1_move] == p2_move
      @p1_counter += 1
      return "#{player_1.name} wins!"
    else
      @p2_counter += 1
      return "Computer wins!"
    end
  end

end

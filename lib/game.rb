class Game
  attr_reader :computer_move
  def initialize(player)
    @player = player
  end

  def assign_computer_move
    @computer_move = ["rock","paper","scissors"].sample
  end

  def player_move(player)
    @player_move = player.move
  end

  private

  def win?
    return true if @player_move == "rock" && @computer_move == "scissors"
    return true if @player_move == "scissors" && @computer_move == "paper"
    return true if @player_move == "paper" && @computer_move == "rock"
  end

  def draw?
    @player_move == @computer_move
  end

  def lose?
    return true if @player_move == "rock" && @computer_move == "paper"
    return true if @player_move == "scissors" && @computer_move == "rock"
    return true if @player_move == "paper" && @computer_move == "scissors"
  end

end

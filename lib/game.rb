class Game

attr_reader :name, :result, :computer_move
attr_accessor :player_move

  def initialize(name)
    @name = name
    @player_move = nil
    @computer_move = nil
    @result = nil
  end

def game_round
  computer_choice
  if draw?
    @result = "Drawn"
  elsif player_wins?
    @result = "Won"
  elsif player_lost?
    @result = "Lost"
  end
end

private

def draw?
  @player_move == @computer_move
end

def player_wins?(player_move = @player_move, computer_move = @computer_move)
  (player_move == "Rock" && computer_move == "Scissors") || (player_move == "Paper" && computer_move == "Rock") || (player_move == "Scissors" && computer_move == "Paper")
end

def player_loses?(player_move = @player_move, computer_move = @computer_move)
  (player_move == "Rock" && computer_move == "Paper") || (player_move == "Paper" && computer_move == "Scissors") || (player_move == "Scissors" && computer_move == "Rock")
end

def computer_choice
  arr = ["Rock", "Paper", "Scissors"]
  @computer_move = arr.sample
end

end

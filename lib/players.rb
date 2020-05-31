class Players

  attr_reader :player_name, :player_move, :random_move

  def initialize(player_name)
    @computer_move = generate_computer_move
    @player_name = player_name
    @player_move = player_move
  end

  def player_choose_move(player_move)
    @player_move = player_move
  end

  def generate_computer_move
    move = ["Rock", "Paper", "Scissors"]
    @random_move = move.sample
  end
end



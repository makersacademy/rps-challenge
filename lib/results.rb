class Results
  attr_reader :player_name, :player_move, :computer_move

  def initialize(options)
    @player_name = options['player_name']
    @player_move = options['player_move']
    @computer_move = options['computer_move']
  end

  def check_results(player_move, computer_move)
   if player_move == computer_move
     "It's a draw!"
   elsif (player_move == "Scissors" && computer_move == "Rock") ||
     (player_move == "Paper" && computer_move == "Scissors") ||
     (player_move == "Rock" && computer_move == "Paper")
     "Computer won!"
   else (player_move == "Scissors" && computer_move == "Paper") ||
     (player_move == "Rock" && computer_move == "Scissors") ||
     (player_move == "Paper" && computer_move == "Rock")
   "You won!"
   end
 end
end

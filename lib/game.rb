class Game

  def self.create(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game 
  end

  attr_reader :player, :opponent

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

  # def select_winner
    # if @player_move == @computer_move
		# 	"It's a tie!"
    # elsif @player_move = "Rock" && @computer_move == "Scissors" 
    #   "Rock beats scissors - you won #{@player_name}!"
    # elsif @player_move  == "Rock" && @computer_move == "Paper"
    #   "Unlucky #{@player_name}! You lost!"
    # elsif @player_move  == "Scissors" && @computer_move == "Paper"
    #   "Scissors beats paper - you won #{@player_name}!"
    # elsif @player_move  == "Scissors" && @computer_move == "Rock"
    #   "You Loose #{@player_name}! Rock beats Scissors"
    # elsif @player_move  == "Paper" && @computer_move == "Rock"
		# 	"Paper beats rock - you won #{@player_name}!"
    # elsif @player_move  == "Paper" && @computer_move == "Scissors"
    #  "Unlucky #{@player_name}! You lost!"
    # end 
  # end
end



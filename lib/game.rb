require_relative 'computer_player'
class Game

  RULES = { "Rock" => "Scissors",
            "Paper" => "Rock",
            "Scissors" => "Paper" }

  attr_reader :player_1, :player_2, :players, :choice, :computer_move

  def initialize(player_1_name)
    @player_1 = Player.new(player_1_name)
    @player_2 = ComputerPlayer.new
    @players = [@player_1, @player_2]
  end

	def player_move(choice)
		@choice = choice
	end

	def computer_choice
		@computer_move = @player_2.computer_move
	end

	def result
		@choice == @computer_move ? tie_break : win_scenarios(@choice, @computer_move)
	end

  def win_scenarios(choice_1, choice_2)
    RULES[choice_1][choice_2] ? player_1_wins : player_2_wins
  end

  def player_1_wins
    "#{@player_1.name} wins!"
  end

  def player_2_wins
    "#{@player_2.name} wins!"
  end

  def tie_break
    "It's a tie! Next time try to be more original"
  end

  def self.instance
    @game
  end

  def self.create(player_1_name)
    @game = Game.new(player_1_name)
  end
end

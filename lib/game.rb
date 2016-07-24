require_relative 'computer_player'
class Game

  attr_reader :player_1, :player_2, :players, :score, :choice, :comp_choice

  def initialize(player_1_name)
    @player_1 = Player.new(player_1_name)
    @player_2 = Computer_Player.new
    @players = [@player_1, @player_2]
  end

	def player_move(choice)
		@choice = choice
	end

	def computer_choice
		@computer_move = @player_2.computer_move
	end

	def result
		@choice == @computer_move ? "It is a tie!" : winner
	end

  def winner
    case @computer_move
    when "Rock"
      @choice == "Paper" ? "#{@player_1.name} wins!" : "#{@player_2.name} wins!"
    when "Paper"
      @choice == "Scissors" ? "#{@player_1.name} wins!" : "#{@player_2.name} wins!"
    when "Scissors"
      @choice == "Rock" ? "#{@player_1.name} wins!" : "#{@player_2.name} wins!"
    end
  end

  def self.instance
    @game
  end

  def self.create(player_1_name)
    @game = Game.new(player_1_name)
  end

end

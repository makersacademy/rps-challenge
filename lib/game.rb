class Game
  attr_accessor :player1, :player2
  attr_reader :winner
  def initialize(player1, player2 = "computer", player_class = Player)
    @player_class = player_class
    @player1 = @player_class.new(player1)
    @player2 = @player_class.new(player2)
    @rps = ["Rock","Paper","Scissors"]
    @winner = "none"
  end

  def self.new_game(player1)
    @@this_game = Game.new(player1)
  end

  def self.stored_game
    @@this_game
  end

  def play(choice)
    @player1.turn = choice
    @player2.turn = @rps.sample
    winner
  end

  def winner
    if @player1.turn == "Rock"
      case @player2.turn
      when "Rock" then @winner = "none"
      when "Paper" then @winner = @player1.name
      when "Scissors" then @winner = @player2.name
      end
    elsif @player1.turn == "Paper"
      case @player2.turn
      when "Rock" then @winner = @player1.name
      when "Paper" then @winner = "none"
      when "Scissors" then @winner = @player2.name
      end
    elsif @player1.turn == "Scissors"
      case @player2.turn
      when "Rock" then @winner = @player2.name
      when "Paper" then @winner = @player1.name
      when "Scissors" then @winner = "none"
      end
    end
  end
end

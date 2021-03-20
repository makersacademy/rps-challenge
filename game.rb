class Game
  attr_accessor :player1, :player2
  attr_reader :winner, :type
  def initialize(player1, type, player2, player_class = Player)
    @player_class = player_class
    @player1 = @player_class.new(player1)
    @player2 = @player_class.new(player2)
    @rps = ["Rock","Paper","Scissors"]
    @winner = "none"
    @type = type
  end

  def self.new_game(player1, type, player2 = "Your opponent")
    @@this_game = Game.new(player1, type, player2)
  end

  def self.stored_game
    @@this_game
  end

  def play(choice1, choice2 = @rps.sample)
    @player1.turn = choice1
    @player2.turn = choice2
    winner
  end

  def winner
    if @player1.turn == "Rock"
      case @player2.turn
      when "Rock" then @winner = "Nobody won - TIE"
      when "Paper" then @winner = @player2.name
      when "Scissors" then @winner = @player1.name
      when "Spock" then @winner = @player2.name
      when "Lizard" then @winner = @player1.name
      end
    elsif @player1.turn == "Paper"
      case @player2.turn
      when "Rock" then @winner = @player1.name
      when "Paper" then @winner = "Nobody won - TIE"
      when "Scissors" then @winner = @player2.name
      when "Spock" then @winner = @player1.name
      when "Lizard" then @winner = @player2.name
      end
    elsif @player1.turn == "Scissors"
      case @player2.turn
      when "Rock" then @winner = @player2.name
      when "Paper" then @winner = @player1.name
      when "Scissors" then @winner = "Nobody won - TIE"
      when "Spock" then @winner = @player2.name
      when "Lizard" then @winner = @player1.name
      end
    elsif @player1.turn == "Spock"
      case @player2.turn
      when "Rock" then @winner = @player1.name
      when "Paper" then @winner = @player2.name
      when "Scissors" then @winner = @player1.name
      when "Spock" then @winner = "Nobody won - TIE"
      when "Lizard" then @winner = @player2.name
      end
    elsif @player1.turn == "Lizard"
      case @player2.turn
      when "Rock" then @winner = @player2.name
      when "Paper" then @winner = @player1.name
      when "Scissors" then @winner = @player2.name
      when "Spock" then @winner = @player1.name
      when "Lizard" then @winner = "Nobody won - TIE"
      end
    end
  end
end

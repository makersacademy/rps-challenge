class Game

  attr_reader :computer_move, :result

  def self.create(number_of_players)
    @game = Game.new(number_of_players)
  end

  def self.instance
    @game
  end

  def initialize(number_of_players, player_class = Player)
    @number_of_players = number_of_players
    @player1 = player_class.new
    if @number_of_players == 2
      @player2 = player_class.new
    end
  end

  def play(move)
    @player_move = move
    @player1.record_move(move)
    random_move if @number_of_players == 1
    determine_winner
  end

  def add_name(player1, player2 = nil)
    @player1.add_name(player1)
    @player2.add_name(player2) if @number_of_players == 2
  end

  def player1_name
    @player1.name
  end

  def player2_name
    @player2.name
  end

  def player1_move
    @player1.move
  end

  def player2_move
    @player2.move
  end

  private

  def random_move
    @computer_move = ["Rock", "Paper", "Scissors"].sample
  end

  def determine_winner
    if @player_move == @computer_move
      @result = "It's a draw!"
    elsif @player_move == 'Rock' && @computer_move == 'Scissors'
      @result = "You're a winner baby!"
    elsif @player_move == 'Paper' && @computer_move == 'Rock'
      @result = "You're a winner baby!"
    elsif @player_move == 'Scissors' && @computer_move == 'Paper'
      @result = "You're a winner baby!"
    else
      @result = "You lose!"
    end
  end

end

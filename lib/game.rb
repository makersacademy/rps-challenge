class Game

  attr_reader :name, :player_move, :computer_move, :result

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def initialize(name)
    @name = name
  end

  def play(move)
    @player_move = move
    random_move
    determine_winner
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

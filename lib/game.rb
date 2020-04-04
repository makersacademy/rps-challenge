class Game

  attr_reader :player_name, :result, :computer_move, :player_score, :computer_score
  attr_accessor :player_move

  def initialize(player_name)
    @player_name = player_name
    @player_score = 0
    @computer_score = 0
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def game_round
    computer_chooses
    if draw?
      @result = "Drawn"
    elsif player_wins?
      @result = "Won"
      @player_score += 1
    elsif player_loses?
      @result = "Lost"
      @computer_score += 1
    end
  end

  private

  def computer_chooses
    arr = ["Rock", "Paper", "Scissors"]
    @computer_move = arr.sample
  end

  def draw?
    @player_move == @computer_move
  end

  def player_wins?(player_move = @player_move, computer_move = @computer_move)
    (player_move == "Rock" && computer_move == "Scissors") ||
    (player_move == "Paper" && computer_move == "Rock") ||
    (player_move == "Scissors" && computer_move == "Paper")
  end

  def player_loses?(player_move = @player_move, computer_move = @computer_move)
    (player_move == "Rock" && computer_move == "Paper") ||
    (player_move == "Paper" && computer_move == "Scissors") ||
    (player_move == "Scissors" && computer_move == "Rock")
  end

end

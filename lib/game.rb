class Game

  attr_reader :player_1, :computer

  def initialize(player_1,computer)
    @player_1 = player_1
    @computer = computer
  end

  def self.create(player_1,computer)
    @game = Game.new(player_1,computer)
  end

  def self.instance
    @game
  end

  def play(player_move, computer_move)
    if player_move == computer_move
      return "draw"
    elsif (player_move == "Rock"&& computer_move == "Scissors") ||
      (player_move  == "Paper" && computer_move  == "Rock") ||
      (player_move == "Scissors" && computer_move == "Paper")
      return "player"
    elsif (player_move == "Scissors" && computer_move == "Rock") ||
      (player_move == "Rock" && computer_move == "Paper") ||
      (player_move == "Paper" && computer_move == "Scissors")
      return "computer"
    end
  end
end

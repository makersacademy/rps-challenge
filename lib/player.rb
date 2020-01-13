class Player
  attr_reader :name

  def self.create(name)
    @name = Player.new(name)
  end

  def self.instance
    @name
  end

  def initialize(name)
    @name = name
  end

  def compare_moves(player_move, computer_move)

    if player_move == computer_move
      return "draw"
    elsif (player_move == "Rock" && computer_move == "Scissors") || (player_move == "Scissors" && computer_move == "Paper") || (player_move == "Paper" && computer_move == "Rock")
      return "player"
    elsif (player_move == "Scissors" && computer_move == "Rock") || (player_move == "Rock" && computer_move == "Paper") || (player_move == "Paper" && computer_move == "Scissors")
      return "computer"
    end
  end
end

class Game

  attr_reader :opponent, :player

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

  def self.launch(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game
  end

  def win?
    winning_move
  end

  def winning_move
    winning_move1 || winning_move2 || winning_move3
  end

  def winning_move1
    @player.move == "Rock" && opponent.move == "Scissors"
  end

  def winning_move2
    @player.move == "Scissors" && opponent.move == "Paper"
  end

  def winning_move3
    @player.move == "Paper" && opponent.move == "Rock"
  end

  def loose?
    loosing_move
  end

  def loosing_move
    loosing_move1 || loosing_move2 || loosing_move3
  end

  def loosing_move1
    @player.move == "Rock" && opponent.move == "Paper"
  end

  def loosing_move2
    @player.move == "Scissors" && opponent.move == "Rock"
  end

  def loosing_move3
    @player.move == "Paper" && opponent.move == "Scissors"
  end

end

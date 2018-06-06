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
    return true if player_wins?(player_move: "Rock", opponent_move: "Scissors")
    return true if player_wins?(player_move: "Scissors", opponent_move: "Paper")
    return true if player_wins?(player_move: "Paper", opponent_move: "Rock")
    false
  end

  def loose?
    return true if player_loose?(player_move: "Scissors", opponent_move: "Rock")
    return true if player_loose?(player_move: "Paper", opponent_move: "Scissors")
    return true if player_loose?(player_move: "Rock", opponent_move: "Paper")
    false
  end

  def draw?
    return true if player.move == opponent.current_move
    false
  end

  private

  def player_wins?(player_move:, opponent_move:)
    @player.move == player_move && @opponent.current_move == opponent_move
  end

  def player_loose?(player_move:, opponent_move:)
    @player.move == player_move && @opponent.current_move == opponent_move
  end

end

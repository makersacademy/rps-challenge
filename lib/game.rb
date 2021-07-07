class Game

  attr_reader :player1_move, :player2_move, :player2_name, :player1_name

  def self.create(player1_name, player2_name = nil)
    @game = Game.new(player1_name, player2_name)
  end

  def self.instance
    @game
  end

  def initialize(player_name, player2_name)
    @player1_name = player_name
    @player2_name = player2_name
    @player2_name = nil if player2_name == ""
  end

  def p1_move(move)
    @player2_move = nil
    @player1_move = move
  end

  def p2_move(move)
    @player2_move = move
  end

  def outcome
    @player2_move = cpu_turn if @player2_move.nil?
    return "Draw" if @player1_move == @player2_move

    return rock if @player1_move == "Rock"
    return paper if @player1_move == "Paper"
    return scissors if @player1_move == "Scissors"
  end

  private

  def rock
    if player2_move == "Paper"
      "Player2"
    else
      "Player1"
    end
  end

  def paper
    if player2_move == "Rock"
      "Player1"
    else
      "Player2"
    end
  end

  def scissors
    if player2_move == "Paper"
      "Player1"
    else
      "Player2"
    end
  end

  def cpu_turn
    ["Rock", "Paper", "Scissors"].sample
  end

end

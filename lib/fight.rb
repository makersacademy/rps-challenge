class Fight
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.game_start(player1, player2)
    @fight = Fight.new(player1, player2)
  end

  def self.instance
    @fight
  end

  def draw?
    player1.decision == player2.decision
  end

  def battle(p1, p2)
    array = [p1.decision, p2.decision]
    if p1_wins(array)
      p1.score_point
      p1.name
    elsif p2_wins(array)
      p2.score_point
      p2.name
    end
  end

  def computer?
    @player2.instance_of? Ai
  end

  private

  def p1_wins(array)
    array[0] == "rock" && array[1] == "scissors" ||
    array[0] == "scissors" && array[1] == "paper" ||
    array[0] == "paper" && array[1] == "rock"
  end

  def p2_wins(array)
    array[1] == "rock" && array[0] == "scissors" ||
    array[1] == "scissors" && array[0] == "paper" ||
    array[1] == "paper" && array[0] == "rock"
  end
end

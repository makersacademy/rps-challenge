class Game

  attr_reader :player1, :player2

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
  end

  def self.create(player1,player2)
    @game = Game.new(player1,player2)

  end

  def self.instance
    @game
  end

  def outcome
    return "You win!" if player1_wins
    return "Draw!" if tie
    "You lose!"
  end

  def message
    "Your opponent chose #{player2.weapon}"
  end

private

  def tie
    both_paper || both_scissors || both_rock
  end

  def both_rock
    player1.weapon == :rock && player2.weapon == :rock
  end

  def both_paper
    player1.weapon == :paper && player2.weapon == :paper
  end

  def both_scissors
    player1.weapon == :scissors && player2.weapon == :scissors
  end

  def player1_wins
    rock_beats_scissors || paper_beats_rock || scissors_beats_paper
  end

  def rock_beats_scissors
    player1.weapon == :rock && player2.weapon == :scissors
  end

  def paper_beats_rock
    player1.weapon == :paper && player2.weapon == :rock
  end

  def scissors_beats_paper
    player1.weapon == :scissors && player2.weapon == :paper
  end

end

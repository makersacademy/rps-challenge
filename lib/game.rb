class Game
  attr_reader :player1, :player2

  def initialize(player1,player2)
    @player1, @player2 = player1, player2
  end

  def result
    return 'Draw!' if draw?
    return "#{player1.name} wins!" if player1_win?
    "#{player2.name} wins!"
  end

  private

  def draw?
    player1.choice == player2.choice
  end

  def player1_win?
    rock_wins? || paper_wins? || scissors_wins? || lizard_wins? || spock_wins?
  end

  def rock_wins?
    rock_beat_scissors? || rock_beat_lizard?
  end

  def paper_wins?
    paper_beat_rock? || paper_beat_spock?
  end

  def scissors_wins?
    scissors_beat_paper? || scissors_beat_lizard?
  end

  def lizard_wins?
    lizard_beat_paper? || lizard_beat_spock?
  end

  def spock_wins?
    spock_beat_rock? || spock_beat_scissors?
  end

  def rock_beat_scissors?
    player1.choice == :rock && player2.choice == :scissors
  end

  def rock_beat_lizard?
    player1.choice == :rock && player2.choice == :lizard
  end

  def paper_beat_rock?
    player1.choice == :paper && player2.choice == :rock
  end

  def paper_beat_spock?
    player1.choice == :paper && player2.choice == :spock
  end

  def scissors_beat_paper?
    player1.choice == :scissors && player2.choice == :paper
  end

  def scissors_beat_lizard?
    player1.choice == :scissors && player2.choice == :lizard
  end

  def lizard_beat_paper?
    player1.choice == :lizard && player2.choice == :paper
  end

  def lizard_beat_spock?
    player1.choice == :lizard && player2.choice == :spock
  end

  def spock_beat_rock?
    player1.choice == :spock && player2.choice == :rock
  end

  def spock_beat_scissors?
    player1.choice == :spock && player2.choice == :scissors
  end
end

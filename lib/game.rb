class Game
  attr_reader :player1, :player2

  def initialize(player1,player2)
    @player1, @player2 = player1, player2
  end

  def result
    return 'Draw!' if draw?
    return "#{player1.name} wins!" if player1_win?
    "#{player2.name} wins!" #assuming both players have made valid choices
  end

  private

  def draw?
    player1.choice == player2.choice
  end

  def player1_win?
    rock_beat_scissors? || paper_beat_rock? || scissors_beat_paper?
  end

  def rock_beat_scissors?
    player1.choice == :rock && player2.choice == :scissors
  end

  def paper_beat_rock?
    player1.choice == :paper && player2.choice == :rock
  end

  def scissors_beat_paper?
    player1.choice == :scissors && player2.choice == :paper
  end

end

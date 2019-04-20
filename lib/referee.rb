class Referee
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def declare_winner
    return if draw?

    player1_win? ? player1 : player2
  end

  private

  def draw?
    player1.choice == player2.choice
  end

  def player1_win?

    player1_win_con1 || player1_win_con2 || player1_win_con3

  end

  def player1_win_con1

    player1.choice == 'Paper' && player2.choice == 'Rock'

  end

  def player1_win_con2
    player1.choice == 'Scissors' && player2.choice == 'Paper'
  end

  def player1_win_con3
    player1.choice == 'Rock' && player2.choice == 'Scissors'
  end
end

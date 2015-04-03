class Game
  attr_reader :player1, :player2

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
    @win_cases = [[:paper, :rock],
                  [:scissors, :paper],
                  [:rock, :scissors]]
  end

  def play
    fail 'Players are not ready' unless ready?
    check_winner(player1.chosed_element, player2.chosed_element)
  end

  def ready?
    @player1.ready? && @player2.ready?
  end

  private

  def check_winner element1, element2
    draw if element1 == element2
    player1_win if @win_cases.include?([element1, element2])
    player2_win if @win_cases.include?([element2, element1])
  end

  def player1_win
    @player1.win
    @player2.lose
  end

  def player2_win
    @player2.win
    @player1.lose
  end

  def draw
    @player1.draw
    @player2.draw
  end
end

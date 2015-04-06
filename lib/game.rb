class Game
  attr_reader :player1, :player2
  attr_accessor :winner

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
    @win_cases = [[:paper, :rock], [:scissors, :paper],
                  [:rock, :scissors], [:spock, :scissors],
                  [:rock, :lizard], [:lizard, :spock],
                  [:paper, :spock], [:spock, :rock],
                  [:scissors, :lizard], [:lizard, :paper]]
  end

  def play
    fail 'Players are not ready' unless ready?
    check_winner(player1.chosen_element, player2.chosen_element)
    @winner
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
    @winner = "#{@player1.name} Wins!"
  end

  def player2_win
    @winner = "#{@player2.name} Wins!"
  end

  def draw
    @winner = "Draw!"
  end
end

class Game
  attr_reader :player1, :player2, :p1_choice, :p2_choice, :hands, :result, :best_of, :order
  WINNING_HANDS = [
    [:rock, :scissors],
    [:rock, :lizard],
    [:scissors, :paper],
    [:scissors, :lizard],
    [:paper, :rock],
    [:paper, :spock],
    [:lizard, :spock],
    [:lizard, :paper],
    [:spock, :rock],
    [:spock, :scissors]
  ]
  LOSING_HANDS = [
    [:rock, :paper],
    [:rock, :spock],
    [:scissors, :rock],
    [:scissors, :spock],
    [:paper, :scissors],
    [:paper, :lizard],
    [:lizard, :scissors],
    [:lizard, :rock],
    [:spock, :paper],
    [:spock, :lizard]
  ]
  BEST_OF_DEFAULT = 5

  def self.start(player1, player2, best_of)
    @game = Game.new(player1, player2, best_of)
  end

  def initialize(player1, player2, best_of)
    @player1 = player1
    @player2 = player2
    best_of == "" ? @best_of = BEST_OF_DEFAULT : @best_of = best_of.to_i
    @p1_choice = ''
    @p2_choice = ''
    @result = ''
    @order = [@player1, @player2]
  end

  def self.instance
    @game
  end

  def play1
    @p1_choice = @player1.last_choice
    @p2_choice = @player2.last_choice
    evaluate_hand(@p1_choice, @p2_choice)
  end

  def switch_player
    @order.reverse!
  end

  def p1_won?
    @player1.wins >= (@best_of / 2) + 1
  end

  def p2_won?
    @player2.wins >= (@best_of / 2) + 1
  end

  private

  def evaluate_hand(player_choice, bot_choice)
    p1win if WINNING_HANDS.include?([player_choice, bot_choice])
    p2win if LOSING_HANDS.include?([player_choice, bot_choice])
    draw if player_choice == bot_choice
  end

  def p1win
    @result = :p1win
    @player1.win
  end

  def p2win
    @result = :p2win
    @player2.win
  end

  def draw
    @result = :draw
  end

end

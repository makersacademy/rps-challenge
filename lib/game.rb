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
  WIN_STRING = ' WON THAT ROUND'

  def self.start(player1, player2, best_of)
    @game = Game.new(player1, player2, best_of)
  end

  def initialize(player1, player2, best_of)
    best_of == "" ? @best_of = BEST_OF_DEFAULT : @best_of = best_of.to_i
    @result = []
    @order = [@player1 = player1, @player2 = player2]
  end

  def self.instance
    @game
  end

  def switch_player
    @order.reverse!
  end

  def game_over?
    @player1.wins > (@best_of / 2) || @player2.wins > (@best_of / 2)
  end

  def play
    p1win if WINNING_HANDS.include?([@player1.choice, @player2.choice])
    p2win if LOSING_HANDS.include?([@player1.choice, @player2.choice])
    draw if @player1.choice == @player2.choice
  end

  private

  def p1win
    @result = [:p1win, "#{@player1.name.upcase}#{WIN_STRING}", "beats"]
    @player1.win
  end

  def p2win
    @result = [:p2win, "#{@player2.name.upcase}#{WIN_STRING}", "is beaten by"]
    @player2.win
  end

  def draw
    @result = [:draw, "NO ONE #{WIN_STRING}", "draws with"]
  end

end

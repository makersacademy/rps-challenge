class Game
  attr_reader :player, :hands, :bot_choice, :result, :best_of, :player_choice
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

  def self.start(player, best_of)
    @game = Game.new(player, best_of)
  end

  def initialize(player, best_of)
    @player = player
    best_of == "" ? @best_of = BEST_OF_DEFAULT : @best_of = best_of.to_i
    @bot_choice = ''
    @result = ''
  end

  def self.instance
    @game
  end

  def play(player_choice)
    @bot_choice = Bot.play
    @player_choice = player_choice
    evaluate_hand(@player_choice, @bot_choice)
  end

  def won?
    @player.wins >= (@best_of / 2) + 1
  end

  def lost?
    @player.loses >= (@best_of / 2) + 1
  end

  private

  def evaluate_hand(player_choice, bot_choice)
    win if WINNING_HANDS.include?([player_choice, bot_choice])
    loss if LOSING_HANDS.include?([player_choice, bot_choice])
    draw if player_choice == bot_choice
  end

  def win
    @result = :win
    @player.win
  end

  def loss
    @result = :lose
    @player.loss
  end

  def draw
    @result = :draw
  end

end

class Game
  attr_reader :player, :hands, :bot_choice, :result
  WINNING_HANDS = [
    [:rock, :scissors],
    [:scissors, :paper],
    [:paper, :rock]
  ]
  LOSING_HANDS = [
    [:rock, :paper],
    [:scissors, :rock],
    [:paper, :scissors]
  ]
  def self.start(player)
    @game = Game.new(player)
  end

  def initialize(player)
    @player = player
    @bot_choice = ''
    @result = ''
  end

  def self.instance
    @game
  end

  def play(player_choice)
    @bot_choice = Bot.play
    win if WINNING_HANDS.include?([player_choice, bot_choice])
    loss if LOSING_HANDS.include?([player_choice, bot_choice])
    draw if player_choice == @bot_choice
  end

  def won?
    @player.wins >= 3
  end

  def lost?
    @player.loses >=3
  end

  private

  def win
    @result = :win
    @player.win
  end

  def loss
    @result = :loss
    @player.loss
  end

  def draw
    @result = :draw
  end
end

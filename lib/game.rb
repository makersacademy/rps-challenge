class Game

@game = nil

HANDS = ["Rock","Paper","Scissors"]

attr_reader :player,:choose_hand,:chose_hand


  def initialize(player)
    @player = player
    @hands = HANDS
    @chose_hand = nil
  end

  def self.new_game(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  # attr_writer :chose_hand

  def choose_hand
    @chose_hand = HANDS.sample
  end

end

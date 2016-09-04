class Game

  attr_reader :name

  RESULTS = { 0 => :draw,
              1 => :win,
              2 => :loose }

  HANDS = { rock: 1,
            paper: 2,
            scissors: 3 }

  def initialize(name)
    @name = name
  end

  def self.current_game
    @game
  end

  def self.create_a_game(name)
    @game = Game.new(name)
  end

  def play(hand1,hand2=nil)
    hand1 = HANDS[hand1]
    hand2 = HANDS[hand2] || auto_hand
    RESULTS[game_result(hand1,hand2)]
  end

private

  def auto_hand
    rand(1..4)
  end

  def game_result(hand1,hand2)
    (hand1 - hand2) % 3
  end

end

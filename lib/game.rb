class Game

  attr_reader :name, :hands

  RESULTS = { 0 => "It's a draw!",
              1 => "won",
              2 => "lost" }

  HANDS = { "rock" => 1,
            "paper" => 2,
            "scissors" => 3 }

  def initialize(name)
    @name = name
    @hands = []
  end

  def self.current_game
    @game
  end

  def self.create_a_game(name)
    @game = Game.new(name)
  end

  def play(hand1,hand2=nil)
    @hands = []
    assign_hands(hand1,hand2)
    RESULTS[game_result(@hand1,@hand2)]
  end

# private

  def auto_hand
    rand(1..3)
  end

  def assign_hands(hand1,hand2)
    @hand1 = HANDS[hand1]
    @hand2 = HANDS[hand2] || auto_hand
    @hands << HANDS.key(@hand1)
    @hands << HANDS.key(@hand2)
  end

  def game_result(hand1,hand2)
    (hand1 - hand2) % 3
  end

end

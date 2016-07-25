require_relative 'opponent'


class Game


  attr_reader :player, :player_choice, :opponent

  PAIRS = [ {"Rock" => "Scissors"},
            {"Scissors" => "Paper"},
            {"Paper" => "Rock"}
          ].freeze


  def initialize(player)
    @player = player
    @opponent = Opponent.new
  end

  def self.instance
    @game
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def winner
    return "DRAW" if draw?
    if PAIRS.include? pair_to_compare
      "YOU WIN!!!"
    else
      "YOU LOSE..."
    end
  end

  private

  def pair_to_compare
    {@player.choice => @opponent.option}
  end

  def draw?
    @player.choice == @opponent.option
  end

end

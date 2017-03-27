class Game

  def initialize(players_card, random_card)
    @players_card = players_card.idx
    @random_card = random_card.idx
    @result = ""
  end

  def play
    if @random_card == @players_card
      @result = :draw
    else
      type = [@random_card-1, @random_card-2, @random_card].at(@players_card)
      type != 0 ? @result = :win : @result = :lose
    end
    return @result
  end

  def self.create(players_card, random_card)
    game = Game.new(players_card, random_card)
    game.play
  end

  private
  attr_reader :win, :lose, :draw
end

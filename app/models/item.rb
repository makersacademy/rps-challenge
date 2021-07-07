class Item

  attr_reader :results, :item

  ROCK = { 'paper' => false, 'scissors' => true }
  PAPER = { 'rock' => true, 'scissors' => false }
  SCISSORS = { 'rock' => false, 'paper' => true }

  def initialize(move)
    @item = move
    if move == 'rock'
      @results = ROCK
    elsif move == 'paper'
      @results = PAPER
    elsif move == 'scissors'
      @results = SCISSORS
    end
  end

end

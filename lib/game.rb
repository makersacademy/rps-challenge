class Game

attr_reader :player

  def initialize(name)
    @player = name
  end

  def self.create(name)
  @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def computer_move
    ['Rock','Paper','Scissors'].sample
  end

end

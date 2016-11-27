class Game


  def self.new_game(human_klass)
    @game = Game.new(human_klass)
    return @game
  end

  def self.now
    @game
  end

attr_reader :human, :outcome

  def initialize(human_klass)
    @human = human_klass

  end


end

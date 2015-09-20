class Game

  attr_reader :defeat, :moves

  def initialize
    @defeat = { rock: { rock: :tie, paper: :lose, scissors: :win },
                paper: { rock: :win, paper: :tie, scissors: :lose },
                scissors: { rock: :lose, paper: :win, scissors: :tie } }
    @moves = @defeat.keys
  end

end

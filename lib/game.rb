class Game

  attr_reader :defeat, :moves

  def initialize
    @defeat = { rock: :scissors, paper: :rock, scissors: :paper }
    @moves = @defeat.keys
  end

end

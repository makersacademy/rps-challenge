class Player
attr_reader :name, :move
AI_MOVE = ["Rock", "Paper", "Scissors"].sample
AI_NAME = "Bot"
  def initialize(name = AI_NAME, move = AI_MOVE)
    @name = name
    @move = move
  end

end

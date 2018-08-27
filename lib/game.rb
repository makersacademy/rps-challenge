class Game

  def initialize(player)
    @player = player
  end

  def ai_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end
end

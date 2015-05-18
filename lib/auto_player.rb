require_relative 'player'
class AutoPlayer < Player
  def move
    [:rock, :paper, :scissors, :lizard, :spock].sample
  end
end

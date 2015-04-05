require 'player'
class AutoPlayer < Player
  def move
    [:rock, :paper, :scissors].sample
  end
end

class Game
  def win?(move)
    #puts "win? is #{beats[move] == other}"
    beats[move] == other
  end

  def beats
    { rock: :scissors, scissors: :paper, paper: :rock }
  end

  def other_move
    beats.keys.sample
  end
end
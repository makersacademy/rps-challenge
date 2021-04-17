class Beatmap
  ITEMS = [:rock, :paper, :scissors]
  BEATMAP = { 
    rock: :scissors,
    paper: :rock,
    scissors: :paper
     }
  
  def win?(key, value)
    BEATMAP[key] == value
  end

  def draw?(key, value)
    key == value
  end
end
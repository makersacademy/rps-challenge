class Rock
  RESULTS = {
    :rock => :draw,
    :paper => :lose,
    :scissors => :win
  }
  
  def fight(opponent)
    RESULTS[opponent.downcase.to_sym]
  end
end

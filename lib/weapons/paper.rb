class Paper
  RESULTS = {
    :rock => :win,
    :paper => :draw,
    :scissors => :lose
  }
  
  def fight(opponent)
    RESULTS[opponent.downcase.to_sym]
  end
end
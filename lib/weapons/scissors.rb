class Scissors
  RESULTS = {
    :rock => :lose,
    :paper => :win,
    :scissors => :draw
  }
  
  def fight(opponent)
    RESULTS[opponent.downcase.to_sym]
  end
end
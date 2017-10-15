class Rules

  def initialize(competition)
    @competition = competition
  end

  def even?(competition)
    competition.first == competition.last ? true : false
  end

  def player_win?(competition)
    if competition == [:rock, :scissors] || competition == [:scissors, :paper] || competition == [:paper, :rock]
      true
    else
      false
    end
  end

  #def player_lose?(competition)
    #if competition == [:scissors, :rock] || competition == [:paper, :scissors] || competition == [:rock, :paper]
      #true
    #else
      #false
    #end
end



end

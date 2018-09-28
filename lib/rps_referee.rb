class RPSReferee

  POSSIBLE_RESULTS = { [:rock, :rock] => :Draw,
                       [:scissors, :paper] => :Draw,
                       [:paper, :rock] => :Draw,
                       [:rock, :scissors] => 0,
                       [:scissors, :paper] => 0,
                       [:paper, :rock] => 0,
                       [:paper, :scissors] => 1,
                       [:rock, :paper] => 1,
                       [:scissors, :rock] => 1 }


  def decision(moves)
    POSSIBLE_RESULTS[moves]
  end

end

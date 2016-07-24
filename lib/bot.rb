class Bot
# Zhijian Wang (AI)
  def initialize
    @gesture = nil
    @gesture_history = [:rock]
    @gestures = [:rock, :paper, :scissors, :spock, :lizard]

  end

  def gesture(previous_winner = nil)
    if previous_winner == 'computer'
      rand(1..2) == 1 ? @gesture = @gesture_history.pop : @gesture =  @gestures[rand(4)]
    elsif previous_winner == 'you'
      rand(1..2) == 1 ? @gesture = @gestures[@gestures.index(@gesture_history.pop) + 1] : @gesture =  @gestures[rand(4)]
      @gesture = :rock if @gesture == nil
    else
      @gesture = @gestures[rand(4)]
    end
    @gesture_history << @gesture
    @gesture
  end


end


# Zhijian noticed that winning players tended to stick
# with their winning strategy, while losers tended to
# switch to the next strategy in the sequence of rock-paper-scissors,
# following what he calls "persistent cyclic flows".

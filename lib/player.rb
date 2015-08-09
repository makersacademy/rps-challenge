class Player

  attr_reader :played
  attr_reader :last_played

  def initialize
    @played = []
    @last_played = ''
  end

  def play(rps)
    @played << rps
    case rps
      when :rock then @last_played = 1
      when :paper then @last_played = 2
      when :scissor then @last_played = 3
      else
        'Please pick rock, paper or scissor'
    end
  end

  def reset_last_play
    @last_played = ''
  end
end
require_relative 'player'

class ComputerPlayer

  include Player

  def pick_attack
    [
      :paper ,
      :rock ,
      :scissors ,
      :lizard ,
      :spock
    ].sample
  end

end

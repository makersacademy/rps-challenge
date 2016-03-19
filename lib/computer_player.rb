class ComputerPlayer

  @attack_list = [
    :paper ,
    :rock ,
    :scissors ,
    :lizard ,
    :spock
  ]

  def self.pick_attack
    @attack_list.sample
  end

end

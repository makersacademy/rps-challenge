require_relative 'hand'

class Rules

  def self.lizard
    {rock: [:scissors, :lizard], paper: [:rock, :spock], scissors: [:paper, :lizard], spock: [:scissors, :rock], lizard: [:spock, :paper]}
  end



end

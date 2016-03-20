class Game

  attr_reader :player_one , :player_two

  def initialize player_one , player_two
    @player_one = player_one
    @player_two = player_two
  end

  # def self.choose_winner attack , defence
  #   case attack
  #   when :paper then defence == :rock || defence == :spock
  #   when :rock then defence == :scissors || defence == :lizard
  #   when :scissors then defence == :paper || defence == :lizard
  #   when :lizard then defence == :spock || defence == :paper
  #   when :spock then defence == :scissor || defence == :rock
  #   else raise "wrong attack type"
  #   end
  # end

end

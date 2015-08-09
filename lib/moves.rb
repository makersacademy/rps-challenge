class Moves
  attr_reader :list

  def initialize
    @list = [:rock, :paper, :scissors, :spock, :lizard]
  end

  def random_move
    list.sample
  end

  # def beats?(move1, move2)
  #   case move1
  #   when :rock then move2 == :scissors ? true : false
  #   when :paper then move2 == :rock ? true : false
  #   when :scissors then move2 == :paper ? true : false
  #   end
  # end

  # I can't beleive I came up with this in the shower
  def beats?(move1, move2)
    return false if move1 == move2
    number_of_times = list.index(move1)
    list.rotate(number_of_times).index(move2).even? ? true : false
  end
end

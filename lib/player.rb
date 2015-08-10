class Player

  OPTIONS = [:rock, :paper, :scissors]

  attr_accessor :name
  attr_reader :selection

  def initialize name
    @name = name
    @selection = nil
  end

  def choice option
    raise "Not a valid option" if OPTIONS.include?(option.to_sym) == false # !OPTIONS.include?(option.to_sym) use ! for opposite
    @selection = option.to_sym
  end

  # add method to return choice of players
  # def random_selection
  #   x = [:rock, :paper, :scissors].sample
  #   @selection = x
  # end
end

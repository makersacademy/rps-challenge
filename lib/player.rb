class Player

  OPTIONS = [:rock, :paper, :scissors]

  attr_accessor :name
  attr_reader :selection

  def initialize name
    @name = name
    @selection = nil
  end

  def choice option
    raise "Not a valid option" if OPTIONS.include?(option.to_sym) == false
    @selection = option.to_sym
  end

end

class Player
  OPTIONS = [:paper, :scissors, :rock]

  attr_accessor :name
  attr_reader :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def pick(option)
    raise "Not a valid choice" if OPTIONS.include?(option.to_sym) == false
    choice = option.to_sym
  end
end

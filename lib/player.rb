class Player
  OPTIONS = [:paper, :scissors, :rock]

  attr_accessor :name
  attr_reader :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def pick(selection)
    raise "Not a valid choice" if OPTIONS.include?(selection.to_sym) == false
    @choice = selection.to_sym
  end
end

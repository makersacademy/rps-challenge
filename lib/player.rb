
class Player

  attr_accessor :name
  attr_reader :choice

  def initialize name = "Unknown"
    @name = name
    @choice = nil
  end

  def chooses element
    raise 'No such element in the rules' unless element == :paper || element == :scissors || element == :rock
    @choice = element
  end

end
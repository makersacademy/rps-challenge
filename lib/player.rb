class Player
  attr_reader :name
  attr_accessor :action

  def initialize(name = nil)
    @name = name.nil? ? 'Computer' : name
    @action = nil
  end
end

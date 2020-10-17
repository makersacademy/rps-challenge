class Player

attr_reader :name, :choice
attr_accessor :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

end

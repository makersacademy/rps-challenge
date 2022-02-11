class Player

  attr_reader :name, :id
  attr_accessor :weapon

  def initialize(name, id = object_id)
    @name = name
    @id = id
    @weapon = ""
  end
  
end

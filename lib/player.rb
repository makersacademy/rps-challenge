class Player

  attr_reader :name, :id

  def initialize(name, id = object_id)
    @name = name
    @id = id
  end
  
end

class Player

  attr_reader :name, :id

  def initialize(id = self.object_id, name)
    @name = name
    @id = id
  end
  
end
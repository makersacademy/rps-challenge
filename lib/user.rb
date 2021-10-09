class User
  attr_accessor :name, :points
  def initialize(name)
    @name = name
    @points = 0
  end
end
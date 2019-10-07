class Player
  attr_reader :name

  def initialize(name)
    if name == ""
      @is_a_robot = true
      @name = "The Robot"
    else
      @is_a_robot = false
      @name = name
    end
  end

  def robot?
    @is_a_robot
  end
end

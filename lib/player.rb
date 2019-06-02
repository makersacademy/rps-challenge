class Player
  attr_reader :name, :tool

  def initialize(name)
    @name = name
  end

  def tool_of_choice(tool)
    @tool = tool
  end
end
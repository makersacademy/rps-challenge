class Player
attr_reader :name, :last_action

  def initialize(name)
    @name = name
  end

  def set_last_action(action)
    @last_action = action
  end
end

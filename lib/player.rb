class Player

attr_reader :name

  def initialize(name)
    @name = name
  end

  def move(action)
    raise 'Not an allowed action' unless Sheldon::ACTIONS.include? action
    action
  end

end

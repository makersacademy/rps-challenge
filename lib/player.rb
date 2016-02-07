class Player

attr_reader :name

  def initialize(name)
    @name = name
  end

  def make_move(action)
    fail 'Not an allowed action' unless Sheldon::ACTIONS.include? action
    @action = action
  end

  def move
    @action
  end

  def reset
    @action = nil
  end

end

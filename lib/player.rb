class Player
attr_reader :name, :last_action, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def set_last_action(action)
    @last_action = action
  end

  def add_score
    @score += 1
  end
end

class Player
  attr_reader :name, :action
  def initialize(name)
    @name = name
  end

  def pick_action(action = select_random)
    @action = action
  end

  private

  def select_random
    ["✊", "🖐️", "✌"].sample
  end
end

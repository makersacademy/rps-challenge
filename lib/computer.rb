class Computer
  DEFAULT_ACTIONS = ['paper', 'scissors', 'rock']

  attr_reader :name, :action

  def initialize
    @name = 'Computer'
    @action = random_action
  end

  def random_action
    DEFAULT_ACTIONS.sample
  end
end

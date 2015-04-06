require 'actions'

class Player
  include Actions
  attr_reader :name, :action
  def initialize name
    @name = name
  end

  def select_action action
    @action = action if ALLOWED_ACTIONS.include? action
  end
end

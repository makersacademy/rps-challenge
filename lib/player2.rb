require 'singleton'
class Player2
  
  include Singleton
  
  attr_reader :name, :current_choice
  
  OPTIONS = [:rock, :paper, :scissors]
  
  def naming(name)
    @name = name
  end
  
  def choice(current_choice = nil)
    current_choice = current_choice.to_sym if current_choice != nil
    @current_choice = current_choice || OPTIONS.sample
  end
  
end

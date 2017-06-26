require 'singleton'
class Player2
  
  include Singleton
  
  attr_reader :name, :current_choice, :previous_choices
  
  OPTIONS = [:rock, :scissors, :paper]
  
  def naming(name)
    @previous_choices = []
    @name = name
  end
  
  def choice(current_choice = nil)
    current_choice = current_choice.to_sym if current_choice != nil
    @current_choice = current_choice || OPTIONS.sample
    @previous_choices << @current_choice
    @current_choice
  end
  
end

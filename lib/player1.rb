require 'singleton'

class Player1
  
  include Singleton
  
  attr_reader :name, :current_choice, :previous_choices
  
  
  def naming(name)
    @previous_choices = []
    @name = name
  end
  
  def choice(current_choice)
    @current_choice = current_choice.to_sym
    @previous_choices << current_choice
    @current_choice
  end
  
end

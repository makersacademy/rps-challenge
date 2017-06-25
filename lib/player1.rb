require 'singleton'

class Player1
  
  include Singleton
  
  attr_reader :name, :current_choice
  
  def naming(name)
    @name = name
  end
  
  def choice(current_choice)
    @current_choice = current_choice
  end
  
end

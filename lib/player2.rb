require 'singleton'
class Player2
  
  attr_reader :name
  
  include Singleton
  
  def naming(name)
    @name = name
  end
  
  
  
end

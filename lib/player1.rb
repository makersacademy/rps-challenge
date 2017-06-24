require 'singleton'

class Player1
  
  include Singleton
  
  attr_reader :name
  
  OPTIONS = [:rock, :paper, :scissors]
  
  def naming(name)
    @name = name
  end
  
  def choice
    :rock
  end
  
end

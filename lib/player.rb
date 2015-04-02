class Player

  attr_reader :name 
  
  def initialize name
  @name = name
  end

  def has_name?
    name
  end

end  
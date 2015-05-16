class Player
  attr_reader :choice 
  attr_accessor :name

  def initialize(name = nil)
    @name = name
  end

  def select(choice)
    @choice = choice.downcase.to_sym  
  end
# does that throws hash need ot be like that?
end
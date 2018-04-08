class Player

  attr_accessor :name, :choice
  
  def parse
    @choice.delete!(":")
  end
end
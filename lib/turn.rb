class Turn 
  attr_reader :player_name, :player_shape, :opponents_shape
  def initialize(options)
    @player_name = options["player_name"]
    @player_shape = options["player_shape"]
    @opponents_shape = options["opponents_shape"]
  
  end
end


# Using an attr_reader is a shorthand way of writing a method.
# Options being whatever we pass in as an argument.
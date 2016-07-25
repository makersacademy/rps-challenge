class Machine

DEFAULT_ARRAY_OF_OBJECTS = ["Rock", "Paper", "Scissors"]

attr_reader :objects_to_play

def initialize(objects_to_play = DEFAULT_ARRAY_OF_OBJECTS)
  @objects_to_play = objects_to_play
end

def choose_object
  objects_to_play.sample
end





end

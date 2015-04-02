class Computer

attr_accessor :choice

def get_choice
  @choice = [:rock, :paper, :scissors].sample
end

end
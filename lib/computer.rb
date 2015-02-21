class Computer

attr_accessor :weapon

def choose_weapon
  @weapon = [:Rock, :Paper, :Scissors].sample
end

end
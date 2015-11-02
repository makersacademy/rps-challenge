class Computer

attr_reader :choice

def computer_choice
  @choice = [:rock,:paper,:scissors, :lizard, :spock].sample
end

end

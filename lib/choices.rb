class Choices

def initialize

@choice_list = [
  'rock',
  'paper',
  'scissors',
]
end

def list
  choice_list.dup
end

def random_choice
  list.sample
end

private
attr_reader :choice_list

end

class Choices

attr_reader :list

def initialize

@list = [
  'rock',
  'paper',
  'scissors',
]
end

def random_choice
  list.sample
end

def game_size
  list.length
end


private

end

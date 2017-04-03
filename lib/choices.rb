class Choices

attr_reader :list

def initialize

@list = [
  'rock',
  'lizard',
  'spock',
  'wizard',
  'batman',
  'spiderman',
  'glock',
  'scissors',
  'paper',
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

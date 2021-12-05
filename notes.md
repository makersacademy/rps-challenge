- how do i test the generate_move method? or can I assume the sample method works as it's built in to the array?

def sample(random = Random::DEFAULT)
  ["Rock", "Paper", "Scissors"].sample(random: random)
end

specify do
  expect(sample(Random.new(1))).to eq('Paper')
end

 - should i be stubbing on capybara? because it's not testing logic?

 https://miro.com/app/board/uXjVOdT2gz0=/
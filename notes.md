- how do i test the generate_move method? or can I assume the sample method works as it's built in to the array?

def sample(random = Random::DEFAULT)
  ["Rock", "Paper", "Scissors"].sample(random: random)
end

specify do
  expect(sample(Random.new(1))).to eq('Paper')
end

 - should i be stubbing on capybara? because it's not testing logic?


# things id like to add on
- count down like 3, 2, 1 before showing the user the computers choice

- need to check mode method on game
- play another round needs to clear player moves for logic to work
require 'random_pick'

describe RandomPick do
  
  it 'should return a random selection of the array provided' do
    subject = RandomPick.new(Game::CHOICES)
    expect(Game::CHOICES).to include subject.pick
  end

end

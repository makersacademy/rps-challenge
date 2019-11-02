require 'randomizer'

describe Randomizer do
  let(:randomizer) { Randomizer.new }

  it 'generates one of rock, paper and scissors' do
    expect(['ROCK', 'PAPER', 'SCISSORS']).to include(randomizer.move)
  end

  it 'generates a random option of the three' do
    allow(randomizer).to receive(:rand).and_return(0)
    expect(randomizer.move).to eq('ROCK')
  end
end


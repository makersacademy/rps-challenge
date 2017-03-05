require 'player'

describe Player do

  before(:all) do
    srand(67809)
  end

  name = "Joe"
  let(:player) {described_class.new(name)}

  it 'can return the correct name' do
  #  expect(player.name).to eq name
  end

  it 'has an initial score of zero' do
  #  expect(player.score).to eq 0
  end

end

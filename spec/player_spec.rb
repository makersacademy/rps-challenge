require './lib/player'

describe Player do
  subject(:sam) { described_class.new 'Sam' }

  it 'should return its name' do
    expect(sam.name).to eq 'Sam'
  end
end

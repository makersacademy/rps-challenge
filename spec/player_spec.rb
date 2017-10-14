require './lib/player'

describe Player do
  subject(:leonard) { Player.new('Leonard') }

  it 'should initialize with 0 wins' do
    expect(leonard.wins).to eq 0
  end

  context '#name' do
    it 'should return a players name' do
      expect(leonard.name).to eq 'Leonard'
    end
  end
end

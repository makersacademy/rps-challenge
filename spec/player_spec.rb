require 'Player'

describe Player do
  subject(:chayya) { described_class.new('Chayya') }
  subject(:avrami) { described_class.new('Avrami') }
end

describe '#name' do
  it 'returns player1 name' do
    expect(chayya.name).to eq 'Chayya'
  end

  describe '#name' do
    it 'returns player2 name' do
      expect(avrami.name).to eq 'Avrami'
    end
  end
end

require 'player'

describe Player do
  subject(:vu) { Player.new('Vu') }
  describe '#name' do
    it 'returns the name' do
      expect(vu.name).to eq 'Vu'
    end
  end

  describe '#choice' do
    let(:le) { Player.new('Le')}
    it 'returns the choice' do
      le.choice = 'Rock'
      expect(le.choice).to eq 'Rock'
    end
  end
end
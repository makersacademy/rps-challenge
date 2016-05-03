require 'player'

describe Player do
  subject(:noah) {described_class.new('Noah')}

  describe '#name' do
    it 'returns the name of the player' do
      expect(noah.name).to eq 'Noah'
    end
  end

  describe '#choice' do
    it 'sets the choice' do
      noah.choice = 'Rock'
      expect(noah.choice).to eq 'Rock'
    end
  end

end

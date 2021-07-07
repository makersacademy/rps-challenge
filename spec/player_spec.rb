require 'player'

describe Player do
  subject(:gareth) { Player.new('Gareth') }

  describe '#name' do
    it 'returns name' do
      expect(gareth.name).to eq 'Gareth'
    end
  end

  describe '#choice' do
    it 'returns choice' do
      gareth.choice = "scissors"
      expect(gareth.choice).to eq "scissors"
    end
  end

end

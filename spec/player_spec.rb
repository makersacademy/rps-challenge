require 'player'

describe Player do

  subject(:player) {described_class.new('Steph')}

  describe '#initialize' do
    it 'has a name' do
      expect(player.name).to eq 'Steph'
    end
  end


end

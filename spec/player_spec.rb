require 'player'

describe Player do

  let(:player) { described_class.new('Cui Li') }

  describe '.name' do
    it 'displays a name' do
      expect(player.name).to eq ('Cui Li')
    end
  end

  describe '.choice' do
    it 'displays that player has not chosen a hand at initiation' do
      expect(player.choice).to eq nil
    end
  end

end

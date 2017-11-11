require 'player'
# Rspec tests for Player - RSP Game webb app

describe Player do

  subject(:player) { described_class.new('JJ') }

  describe ' #initialization' do
    it 'should be an instance of computer class' do
      expect(player).to be_an_instance_of(Player)
    end

    it 'should set take in name as parameter' do
      expect(player.name).to eq('JJ')
    end
  end
end

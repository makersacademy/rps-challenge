require 'player'

describe Player do
  let(:player1) { described_class.new("Tom") }

  describe 'Initialization' do
    it 'has a name' do
      expect(player1.name).to eq "Tom"
    end

    it 'has a weapon' do
      expect(player1).to respond_to :weapon
    end
  end

  describe '#choose' do
    it 'responds to choose' do
      expect(player1).to respond_to(:choose).with(1).argument
    end

    it 'selects the specified weapon' do
      player1.choose(:rock)
      expect(player1.weapon).to eq :rock
    end
  end
end

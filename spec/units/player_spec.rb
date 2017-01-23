require 'player'

describe Player do
  let(:test_name){"Peter"}
  subject(:player) { Player.new(test_name) }
  let(:signs){described_class::Signs}

  describe 'defaults' do
    it 'is initialized with a name' do
      expect{Player.new(test_name)}.not_to raise_error
    end
    it 'if name is an empty string, it will be CPU' do
      player = Player.new("")
      expect(player.name).to eq "CPU"
    end

  end

  describe '#name' do
    it 'stores the player name' do
      expect(player.name).to eq test_name
    end
  end

  describe '#pick' do
    it 'stores player picked sign' do
      expect{player.pick = :scissors}.not_to raise_error
      expect(player.pick).to eq :scissors
    end
  end
end

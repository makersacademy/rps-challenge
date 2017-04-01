require 'player'


describe Player do

subject(:player) { described_class.new('Thor') }

  describe '#name' do
    it 'returns player name' do
      expect(player.name).to eq 'Thor'
    end
  end

  describe '#hands' do
    it 'holds rock, paper and scissors' do
      expect(player.hands).to eq ['rock','paper','scissors']
    end
  end

end

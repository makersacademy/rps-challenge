require 'player'


describe Player do

subject(:player) { described_class.new('Thor') }

  describe '#name' do
    it 'returns player name' do
      expect(player.name).to eq 'Thor'
    end
  end

  describe '#hand' do
    it 'holds rock, paper and scissors' do
      expect(player.hand).to eq ['rock','paper','scissors']
    end
  end

  describe '#play' do
    it 'sets three to a specific string' do
      player.play('rock')
      expect(player.three).to eq 'rock'
    end
  end

  describe '#auto_play' do
    it 'sets three to one of the strings in the hand array' do
      player.auto_play
      expect(player.hand).to include(player.three)
    end
  end

end

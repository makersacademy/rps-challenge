require 'player'

describe Player do
  subject(:player){described_class.new('Andrew')}
  subject(:opponent){described_class.new('Opponent')}

  describe '#name' do
    it 'gives player\'s name' do
      expect(player.name).to eq 'Andrew'
    end
  end

  describe '#decides' do
    it 'assigns a string that can be read with #decision' do
      player.decides('rock')
      expect(player.decision).to eq 'rock'
    end
  end
end

require 'player'

describe Player do
  let(:player) {Player.new('Trump')}

  describe '#initialize' do
    it 'is given a name' do
      expect(player.name).to eq 'Trump'
    end
  end
end

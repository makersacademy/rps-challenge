require './lib/player'

describe Player do

  subject(:player) {described_class.new('Chuka')}

  context 'to be able to play the game' do
    describe '#name' do
      it 'should be able to record a name' do
        expect(player.name).to eq 'Chuka'
      end
    end

    describe '#choose' do
      it 'will select a weapon' do
        player.choose('Rock')
        expect(player.weapon).to eq 'Rock'
      end
    end
  end
end

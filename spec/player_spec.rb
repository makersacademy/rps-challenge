require './lib/player'

describe Player do

  subject(:player) {described_class.new('Player1')}

  context 'to be able to play the game' do
    describe '#name' do
      it 'able to record a name' do
        expect(player.name).to eq 'Player1'
      end
    end

    describe '#choose' do
      it 'selects a option' do
        player.choose('Rock')
        expect(player.option).to eq 'Rock'
      end
    end
  end
end

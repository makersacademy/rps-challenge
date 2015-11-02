require 'game'

describe Player do

  subject(:player) {described_class.new}
  let(:game) {double(:game, weapon: 'rock')}
    describe 'player_name' do
      it 'checks the player class accepts a name' do
        expect(:player).to respond_to(:player_name).to be true
      end
    end

    describe '#choose' do
      it 'allows the player to choose a weapon' do
        expect(:player.choose(weapon)).to equal weapon
      end

    end

end

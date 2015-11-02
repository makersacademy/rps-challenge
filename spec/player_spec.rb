require 'game'

describe Player do

  subject(:player) {described_class.new(player_name: "Rebecca")}

  # let(:game) {double(:game, weapon: 'rock')}
    describe 'player_name' do
      it {expect(player).to respond_to(:player_name) }
    end

    describe '#choose' do
      it 'allows the player to choose a weapon' do
        weapon = "rock"
        expect(player.choose(weapon)).to eq "rock"
      end

    end

end

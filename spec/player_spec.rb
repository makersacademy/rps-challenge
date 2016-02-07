require 'player'

describe Player do
  subject(:player) { described_class.new('Player 1') }

  describe '#name' do
    it 'returns the player\'s name' do
      expect(player.name).to eq 'Player 1'
    end
  end

  describe '#choose_weapon' do
    it 'sets the player\'s weapon' do
      player.choose_weapon(:scissors)
      expect(player.weapon).to eq :scissors
    end

    context 'if choosing an invalid weapon' do
      it 'raises an error' do
        expect { player.choose_weapon(:flugelhorn) }
        .to raise_error described_class::ARGUMENT_ERROR_MSG
      end
    end
  end

  describe '#weapon' do
    it 'returns the player\'s weapon of choice' do
      player.choose_weapon(:rock)
      expect(player.weapon).to eq :rock
    end
  end
end

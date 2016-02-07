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
        expect do
          player.choose_weapon(:flugelhorn)
        end.to raise_error Player::ERROR_MESSAGE
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

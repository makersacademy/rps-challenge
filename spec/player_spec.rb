require 'player'

describe Player do
  subject(:moxie) { Player.new('Moxie') }
  subject(:hugo) { Player.new('Hugo') }

  describe '#name' do
    it 'returns the players name' do
      expect(moxie.name).to eq 'Moxie'
    end
  end

  describe '#attack_type' do
    it 'returns the players move' do
      expect(moxie.attack_type('rock')).to eq 'rock'
    end
  end

  context 'stubbing randomness' do
    before do
      allow(moxie).to receive(:sample) { |move| Player::MOVES.last }
    end

    describe '#random_attack' do
      it 'returns the players move' do
        expect(moxie.random_attack).to eq 'scissors'
      end
    end
  end
end
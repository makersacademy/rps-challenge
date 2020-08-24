require 'weapon'

describe Weapon do
  subject(:weapon) {described_class.new}
  let(:player_choice) {:Rock}
  let(:computer) {:Scissors}

  describe '#winner' do
      it 'should return true to determine the game is won' do
        expect(weapon.winner(player_choice, computer)).to eq true
      end
  end

  describe '#lose' do
      it 'should return true to determine the game is lost' do
        expect(weapon.lost(computer, player_choice)).to eq true
      end
  end

  describe '#draw' do
    it 'should return false to determine a draw' do
      expect(weapon.draw(player_choice, computer)).to eq false
    end
  end

  describe '#who_wins' do
    it 'should display the result' do
      expect(weapon.who_wins(player_choice, computer)).to eq "You win!"
    end
  end
end

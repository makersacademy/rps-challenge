require 'weapon'

describe Weapon do
  subject(:weapon) {described_class.new}
  let(:player_choice) {:rock}
  let(:computer) {:scissors}

  describe '#winner' do
      it 'should return true to determine the game is won' do
        expect(weapon.winner(player_choice, computer)).to eq true
      end
  end

  describe '#draw' do
    it 'should return false to determine a draw' do
      expect(weapon.draw(player_choice, computer)).to eq false
    end
  end

  describe '#who_wins' do
    it 'should display the result' do
      expect(weapon.who_wins(player_choice, computer)).to eq :Win
    end
  end
end

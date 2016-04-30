require 'player'

describe 'Player' do
  subject(:player) { Player.new("Sergio")}

  context '#name' do
    it('returns the name') do
      expect(player.name).to eq "Sergio"
    end
  end

  context '#choice' do
    it('set value to :rock and reads it ') do
      expect(player.choice = :rock).to eq(:rock)
    end
  end

  context 'convert to number' do
    it('papers is converted to 1') do
      expect(player.to_i("paper")).to eq Player::CHOICES[:paper]
    end
  end

  context 'computer choice' do
    it('provides a random choice for computer') do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(player.computer_choice("classic")).to eq 0
    end
  end
end
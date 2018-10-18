require "player"

describe Player do
  let(:player) { Player.new("Chris") }

  describe '#name' do
    it 'returns name' do
      expect(player.name).to eq("Chris")
    end
  end

  describe '#choose' do
    it 'stores choice' do
      player.choose("Rock")
      expect(player.choice).to eq("Rock")
    end
  end

  describe '#choose_random' do
    it 'chooses random item from list' do
      allow(Player::CHOICES).to receive(:sample).and_return("Scissors")
      expect(player.choose_random).to eq("Scissors")
    end
  end
end

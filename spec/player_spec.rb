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
      player.choose(:rock)
      expect(player.choice).to eq(:rock)
    end
  end

  describe '#choose_random' do
    it 'chooses random item from list' do
      allow(Player::CHOICES).to receive(:sample).and_return(:scissors)
      expect(player.choose_random).to eq(:scissors)
    end
  end

  describe '#has_chosen?' do
    it 'returns false initially' do
      expect(player).not_to have_chosen
    end
    it 'returns true after choice' do
      player.choose(:rock)
      expect(player).to have_chosen
    end
  end

  describe '#reset_choice' do
    it 'resets choice' do
      player.choose(:rock)
      player.reset_choice
      expect(player.choice).to be_nil
    end
  end

end

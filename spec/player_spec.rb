require 'player'

describe Player do
  subject(:player_1) { Player.new("Cinderella") }

  describe '#name' do
    it 'has a name' do
      expect(player_1.name).to eq "Cinderella"
    end
  end

  describe '#shape' do
    it 'can choose rock' do
      allow(player_1).to receive(:shape).and_return("Rock")
      expect(player_1.shape).to eq "Rock"
    end

    it 'can choose paper' do
      allow(player_1).to receive(:shape).and_return("Paper")
      expect(player_1.shape).to eq "Paper"
    end

    it 'can choose scissors' do
      allow(player_1).to receive(:shape).and_return("Scissors")
      expect(player_1.shape).to eq "Scissors"
    end
  end
end

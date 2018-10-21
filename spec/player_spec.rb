require 'player'

describe Player do
  player1 = described_class.new("Balboa")
  context "#initialize" do
    it "has a name" do
      expect(player1.name).to eq "Balboa"
    end
  end
  context 'choosing move' do
    it 'can choose rock' do
      player1.choose=("Rock")
      expect(player1.choice).to eq "Rock"
    end
    it 'can choose paper' do
      player1.choose=("Paper")
      expect(player1.choice).to eq "Paper"
    end
    it 'can choose scissors' do
      player1.choose=("Scissors")
      expect(player1.choice).to eq "Scissors"
    end
  end
end

require 'player'

describe Player do
subject(:player1) { described_class.new("Dave") }
subject(:player2) { described_class.new("Hal 9000")}

  describe '#name' do
    it 'returns the name of the player' do
      expect(player1.name).to eq "Dave"
    end
  end

  describe '#rock' do
    it 'sets player choice as rock' do
      player1.rock
      expect(player1.choice).to eq "Rock"
    end
  end

  describe '#paper' do
    it 'sets player choice as paper' do
      player1.paper
      expect(player1.choice).to eq "Paper"
    end
  end

  describe '#scissors' do
    it 'sets player choice as scissors' do
      player1.scissors
      expect(player1.choice).to eq "Scissors"
    end
  end

  describe '#computer' do
    it 'randomly selects Rock/Paper/Scissors for computer player' do
      player2.computer
      expect(player2.choice).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end

end

require 'compare'

describe Compare do
  subject(:object) { Compare.new("rock", "scissors") }

  describe '#player' do
    it 'returns player action' do
      expect(object.player).to eq "rock"
    end
  end

  describe '#computer' do
    it 'returns computer action' do
      expect(object.computer).to eq "scissors"
    end
  end

  describe '#winner?' do
    it 'says player won' do
      expect(object.winner?).to eq "Rock beats scissors - you won!"
    end
  end
end

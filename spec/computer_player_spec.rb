require 'computer_player'

describe ComputerPlayer do

  it 'is inheriting from player' do
    expect(described_class).to be < Player
  end

  describe '#computer?' do
    it 'returns true' do
      expect(subject.computer?).to be true
    end
  end

  context 'defaults' do
    it 'defaults to the name Computer' do
      expect(subject.name).to eq 'Computer'
    end
  end
end

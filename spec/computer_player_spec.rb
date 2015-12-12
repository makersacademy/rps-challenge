require 'computer_player'

describe ComputerPlayer do
  let(:computer_player) { described_class.new }
  it 'has name Computer' do
    expect(computer_player.name).to eq 'Computer'
  end
  describe '#is_computer?' do
    it 'returns true' do
      expect(computer_player.is_computer?).to be true
    end
  end
end

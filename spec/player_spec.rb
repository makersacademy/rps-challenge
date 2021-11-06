require "player"

describe Player do
  let(:named_player) { described_class.new("Red") }

  it 'names the player whatever name is passed into initializing arguments' do
    expect(named_player.name).to eq "Red"
  end

  it 'assigns a default computer name if no name is passed in initializing arguments' do
    expect(subject.name).to eq Player::COMPUTER_NAME
  end

  describe '#computer?' do
    it 'returns true if the player is the computer, returns false if a person' do
      expect(subject.computer?).to eq true
      expect(named_player.computer?).to eq false
    end
  end

end

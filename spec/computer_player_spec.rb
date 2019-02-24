require 'computer_player'

describe ComputerPlayer do
  subject(:computer_player) { described_class.new }

  it 'inherits from player' do
    expect(described_class).to be < Player
  end

  context 'defaults' do
    it 'defaults name to Computer' do
      expect(computer_player.name).to eq "Computer"
    end
  end
end

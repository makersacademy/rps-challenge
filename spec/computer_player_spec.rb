require 'computer_player'

describe ComputerPlayer do
  subject(:computer_player) { described_class.new }

  describe
  it 'inherits from player' do
    expect(described_class).to be < Player
  end

  it 'defaults to the name Computer' do
    expect(computer_player.name).to eq 'Computer'
  end
end

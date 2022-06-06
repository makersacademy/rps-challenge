require 'computer_player'

describe ComputerPlayer do
  subject(:computer_player) { described_class.new }

  it "Inherits from the player class" do
    expect(described_class).to be < Player
  end

  it "Checks to see whether it is a computer" do
    expect(computer_player.computer?).to eq true
  end

  it "Returns the default name of Computer" do
    expect(computer_player.name).to eq "Computer"
  end
end
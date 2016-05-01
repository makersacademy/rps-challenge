require 'Player'

describe Player do
  subject(:player){described_class.new "Nick"}
  subject(:computer){described_class.new "Computer"}

  it "sets a players choice" do
    player.choose("Rock")
    expect(player.choice).to eq "Rock"
  end

  it "chooses something for computer player" do
    allow(Kernel).to receive(:rand).and_return(1)
    computer.choose
    expect(computer.choice).to eq "Paper"
  end
end

require 'Player'

RSpec.describe Player do
  subject(:sh) { Player.new("SH") }

  it "Returns the player's name" do
    expect(sh.name).to eq "SH"
  end

  it "Checks to see if it is a computer player" do
    expect(sh.computer?).to eq false
  end

  it "Returns the move passed through the current_move method" do
    sh.current_move("Rock")
    expect(sh.move).to eq "Rock"
  end

  it "Calls the won method and checks if it has increased by 1" do
    # No. of wins to be initally 0
    expect(sh.wins).to eq 0
    # No. of wins to increase by 1 upon first win
    sh.won
    expect(sh.wins).to eq 1
  end

end
require_relative '../../lib/player'

describe Player do
  it "returns the player name" do
    player = Player.new()
    expect(subject.name).to eq "Ruzeka"
  end
  
end
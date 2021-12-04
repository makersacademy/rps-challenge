require 'player'

describe Player do
  let!(:player) { Player.new("Wednesday") }

  it "has a name" do
    expect(player.name).to eq "Wednesday"
  end

  it "can track his/her number of victories" do
    expect(player.victories).to eq 0
  end
end

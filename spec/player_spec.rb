require "player"

describe Player do

  it "sets choice to nil" do
    player = Player.new
    expect(player.choice).to eq nil
  end
end

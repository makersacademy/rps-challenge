require "./lib/game.rb"

describe Game do

  it "when instantiated should have two players ready to play" do
    s = described_class.new("radu")
    expect([s.player1, s.player2].any?{ |player| !player.instance_of?(Player) }).to eq(false)
  end

  it "check who won out of two values" do
    # expect().to
  end

end
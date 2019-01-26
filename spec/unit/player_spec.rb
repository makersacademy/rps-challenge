require 'player'

describe Player do
  it "recieves a choice" do
    player = Player.new(:rock)
    expect(player.choice).to eq(:rock)
  end
end

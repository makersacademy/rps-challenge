require 'player'

describe Player

context "After submiting a form" do
  it "Initlizes with a name" do
    player = Player.new "Dawid"
    expect(player.name).to eq "Dawid"
  end
end

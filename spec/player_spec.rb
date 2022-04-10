describe Player do
  it "returns the players name" do
    player = Player.new("Jordan")
    expect(player.name).to eq "Jordan"
  end
end

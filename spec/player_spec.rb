require 'player'

RSpec.describe "Player" do
  it "return palyer's name" do
    player = Player.new("An")
    expect(player.name).to eq "An"
  end
end

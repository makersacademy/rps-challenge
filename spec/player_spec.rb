require 'player'


describe Player do
  let (:test_player) {Player.new("Ezequiel")}

  it "stores the player's name" do
    expect(test_player.name).to eq("Ezequiel")
  end
end

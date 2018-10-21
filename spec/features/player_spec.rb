require 'player'

describe Player do
  let (:player) {Player.new("Bobby")}
  it "saves name upon creation" do
    expect(player.name).to eq "Bobby"
  end
end

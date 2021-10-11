require 'player'

describe Player do
  let(:player) { Player.new("Player") }

  it "has a name" do
    expect(player.name).to eq "Player"
  end

  it "has a win count" do
    expect(player.win_count).to eq Player::STARTING_COUNTS
  end

  it "has a loss count" do
    expect(player.lose_count).to eq Player::STARTING_COUNTS
  end
end

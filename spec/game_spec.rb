require 'game'

describe Game do
  let(:player_1) { double(:player, name: "Alice") }
  subject(:game_1) { Game.new(player_1)}

  it "should be able to log a player's name" do
    expect(subject.player_1.name).to eq "Alice"
  end
end

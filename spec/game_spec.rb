require 'game'

describe Game do
  let(:player_1) { double(:player, name: "Alice") }
  subject(:game_1) { Game.new(player_1) }

  it "should be able to log a player's name" do
    expect(subject.player_1.name).to eq "Alice"
  end

  it "should be able to choose a weapon for a player" do
    weapon = "ROCK"
    expect(player_1).to receive(:choose_weapon).with(weapon)
    subject.choose_weapon(weapon)
  end

  it "can store a current game's data" do
    described_class.store_game(subject)
    expect(described_class.current_game).to eq subject
  end
end

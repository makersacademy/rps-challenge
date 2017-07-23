require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { 'Artemis' }
  let(:weapon) { 'Rock' }

  it "returns the name of the player" do
    expect(player.name).to eq name
  end

  it "returns player's weapon" do
    expect(player.get_weapon(weapon)).to eq weapon
  end
end

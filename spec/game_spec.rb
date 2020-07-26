require 'game'

describe Game do

  subject(:game) {described_class.new(player_1)}
  let(:player_1) {double :player_1}

  it "knows who is playing" do
    allow(player_1).to receive(:name).and_return("Jake")
    expect(game.player.name).to eq player_1.name
  end
end

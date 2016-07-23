require "game"

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player)   { Player.new("Jon") }

  it "it starts with one player" do
    expect(game.player).to eq player
  end
  it "has list of weapons" do
    expect(game.weapons).to include "rock","paper","scissors"
  end

  describe "#Player vs CPU" do
    context "when CPU's weapon is 'paper'" do
      before do
        allow(game).to receive(:random_weapon).and_return "paper"
      end
#      it "player wins with scissors" do
#        player.take_weapon('scissors')
#        expect(game.winner).to eq player.name
#      end
      it "can be a draw" do
        player.take_weapon('paper')
        expect(game.winner).to eq "Draw!"
      end

    end
  end

end

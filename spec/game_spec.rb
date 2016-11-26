require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  it "should have an empty player choice" do
    expect(game.player_choice).to be nil
  end

  it "should take a player" do
    expect(game.player).to eq player
  end
  context "player's turn" do
    before do
      allow(player).to receive(:rock) { "Rock" }
      allow(player).to receive(:paper) { "Paper" }
      allow(player).to receive(:scissors) { "Scissors" }
    end
    it "should store rock" do
      game.rock
      expect(game.player_choice).to eq "Rock"
    end
    it "should store paper" do
      game.paper
      expect(game.player_choice).to eq "Paper"
    end
    it "should store scissors" do
      game.scissors
      expect(game.player_choice).to eq "Scissors"
    end
  end
end

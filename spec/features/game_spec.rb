require 'game'

describe Game do
  subject(:game) {described_class.new(opponent_klass)}
  let(:opponent_klass) {double(:opponent_klass)}
  let(:opponent) {double(:opponent)}
  before do
   allow(opponent_klass).to receive(:new).and_return(opponent)
  end
  it "can initialize with a new opponent" do
    expect(game.opponent).to eq opponent
  end

  context "when playing a game of RPS" do
    it "can store the player's hand" do
      game.set_player_1_hand(:paper)
      expect(game.player_1_hand).to eq :paper
    end

    it "can store the opponent's hand" do
      allow(opponent).to receive(:choose_hand).and_return(:paper)
      game.set_opponent_hand
      expect(game.opponent_hand).to eq :paper
    end
  end
end
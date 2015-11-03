require 'game'

describe Game do
  subject(:game) {described_class.new(opponent_klass, result_klass, history_klass)}
  let(:opponent_klass) {double(:opponent_klass)}
  let(:opponent) {double(:opponent)}
  let(:result_klass) {double(:result_klass)}
  let(:history_klass) {double(:history_klass)}
  let(:history) {double(:history)}
  before do
   allow(opponent_klass).to receive(:new).and_return(opponent)
   allow(history_klass).to receive(:new).and_return(history)
  end
  it "can initialize with a new opponent" do
    expect(game.opponent).to eq opponent
  end

  it "initializes a history" do
    expect(game.history).to eq history
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

    it "can pass these hands to the history" do
      expect(history).to receive(:store_hands)
      game.store_hands
    end

    it "checks the result of the two hands clashing" do
      expect(result_klass).to receive(:run)
      game.result
    end
  end
end
require_relative '../lib/game.rb'

describe Game do
  let(:subject) { Game.new("Rae") }

  describe '#result_string(player_move)' do
    it "returns won, drew or lost for player" do
      allow(subject).to receive(:sample) { "Rock" }
      expect(subject.result_string("Paper")).to eq("Rae won")
      expect(subject.result_string("Rock")).to eq("draw")
      expect(subject.result_string("Scissors")).to eq("Computer won")
    end
  end
end

require_relative '../lib/result.rb'

describe Game do
  let(:subject) { Game.new("Rae") }

  describe '#random_move' do
    it "returns random choice of RPS" do
      allow_any_instance_of(Array).to receive(:sample) { "Rock" }
      expect(subject.random_move).to eq("Rock")
    end
  end

  describe '#result(player_move)' do
    it "returns won, drew or lost for player" do
      allow_any_instance_of(Array).to receive(:sample) { "Rock" }
      expect(subject.result_string("Paper")).to eq("Rae won")
      expect(subject.result_string("Rock")).to eq("draw")
      expect(subject.result_string("Scissors")).to eq("Computer won")
    end
  end
end

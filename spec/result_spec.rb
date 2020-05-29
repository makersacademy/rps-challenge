require_relative '../lib/result.rb'

describe Result do

  describe '#random_move' do
    it "returns random choice of RPS" do
      allow_any_instance_of(Array).to receive(:sample) {"Rock"}
      expect(subject.random_move).to eq("Rock")
    end
  end

  describe '#result(player_move)' do
    it "returns won, drew or lost for player" do
      allow_any_instance_of(Array).to receive(:sample) {"Rock"}
      expect(subject.result("Paper")).to eq("won")
      expect(subject.result("Rock")).to eq("drew")
      expect(subject.result("Scissors")).to eq("lost")
    end
  end
end

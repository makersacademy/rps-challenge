require_relative '../lib/player'

describe Player do
  subject(:player) {described_class.new}

  let(:rock) {double :rock}
  let(:paper) {double :paper}
  let(:scissors) {double :scissors}

  describe '#select_rps' do
    it "sets an rps for the player" do
      expect {player.select_rps(rock)}.to change(player, :c_rps).from(nil).to(rock)
    end
  end

  describe '#reset' do
    it "resets rps" do
      player.reset
      expect(player.c_rps).to eq nil
    end
  end

end

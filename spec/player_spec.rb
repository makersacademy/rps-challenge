require_relative '../lib/player'

describe Player do
  subject(:player) {described_class.new}

  let(:rock) {double :rock}
  let(:paper) {double :paper}
  let(:scissors) {double :scissors}

  describe '#sel_rock' do
    it "sets current rps to rock" do
      expect {player.sel_rock}.to change(player, :c_rps).from(nil).to(:rock)
    end
  end

  describe '#sel_paper' do
    it "sets current rps to paper" do
      expect {player.sel_paper}.to change(player, :c_rps).from(nil).to(:paper)
    end
  end

  describe '#sel_scissors' do
    it "sets current rps to scissors" do
      expect {player.sel_scissors}.to change(player, :c_rps).from(nil).to(:scissors)
    end
  end

  describe '#reset' do
    it "resets rps" do
      player.reset
      expect(player.c_rps).to eq nil
    end
  end

end

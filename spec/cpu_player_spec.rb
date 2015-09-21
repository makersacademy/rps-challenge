require_relative '../lib/rps_game/cpu_player'

describe Cpu do

  it "returns a random choice" do
    allow(subject).to receive(:cpu_move).and_return :rock
    expect(subject.cpu_move).to eq :rock
  end
  
end

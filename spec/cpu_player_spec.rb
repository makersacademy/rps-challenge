require_relative '../lib/rps_game/cpu_player'

describe Cpu do

# This test is currently Vacuous
  it "returns a random choice" do
    allow(subject).to receive_messages(:cpu_move => :rock)
    expect(subject.cpu_move).to eq :rock
  end
  
end

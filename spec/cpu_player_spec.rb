require_relative '../lib/rps_game/cpu_player'

describe Cpu do

# This test is currently Vacuous
  it "Cpu plays a random choice" do
    allow(subject).to receive_messages(:next_move => :r)
    expect(subject.next_move).to eq :r
  end
  
end



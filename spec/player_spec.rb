require 'player'

describe Player do
  subject { Player.new("playername") }
  it "has a name variable" do
    expect(subject.name).to eq("playername")
  end
  it "can set a move" do
    move = :rock
    expect { subject.choose_move(move) }.to_not raise_error
  end

  it "can retrieve a move" do
    move = :rock
    subject.choose_move(move)
    expect(subject.move).to eq(move)
  end

  it "raises an error if not given rock, paper or scissors" do
    expect { subject.choose_move(:nothing) }.to raise_error("Invalid Move")
  end
end

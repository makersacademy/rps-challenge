require "./lib/game"

describe Game do

  let(:player_1) { double(:player_1)}
  let(:player_2) { double(:player_2)}
  let(:subject) { described_class.new(player_1, player_2) }

  it "checks that the game exists" do
    expect(subject).to be_an_instance_of(described_class)
  end

  it "finds the rock choice" do
    expect(subject.options).to include :rock
  end

  it "sees that the players are captured" do
    expect(subject.playing).to include player_2
  end

end

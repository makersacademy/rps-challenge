require "player"
describe Player do
  let(:subject){described_class.new("soroush","scissors")}
  it "We can get the name of the player" do
    expect(subject.name).to eq "soroush"
  end
  it "We can get the movement of the player" do
    expect(subject.movement).to eq "scissors"
  end
end

require './lib/player'

describe Player do

  subject(:player) { described_class.new("test name") }

  it { should be_an_instance_of Player }

  it "can return the players name" do
    expect(subject.name).to eq "test name"
  end

  it "has a default move of 0" do
    expect(subject.move).to eq 0
  end

  it "can store the players move when move is rock" do
    subject.rock_move
    expect(subject.move).to eq :rock
  end

  it "can store the players move when move is paper" do
    subject.paper_move
    expect(subject.move).to eq :paper
  end

  it "can store the players move when move is scissors" do
    subject.scissors_move
    expect(subject.move).to eq :scissors
  end

end

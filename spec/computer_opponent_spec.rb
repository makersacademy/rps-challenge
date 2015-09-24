require 'computer_opponent'

describe ComputerOpponent do

  it "is expected to pick a random shape" do
    expect(subject).to respond_to :pick_shape
  end

  it "is expected to show paper beating rock" do
    subject.shape(:paper)
    expect(subject.outcome(:rock)).to eq :computer_wins
  end

  it "is expected to show scissors losing to rock" do
    subject.shape(:scissors)
    expect(subject.outcome(:rock)).to eq :computer_loses
  end

  it "is expected to show scissors beating paper" do
    subject.shape(:scissors)
    expect(subject.outcome(:paper)).to eq :computer_wins
  end

  it "is expected to show rock losing to paper" do
    subject.shape(:rock)
    expect(subject.outcome(:paper)).to eq :computer_loses
  end

  it "is expected to show rock beating scissors" do
    subject.shape(:rock)
    expect(subject.outcome(:scissors)).to eq :computer_wins
  end

  it "is expected to show paper losing to scissors" do
    subject.shape(:paper)
    expect(subject.outcome(:scissors)).to eq :computer_loses
  end

end

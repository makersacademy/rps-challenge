require 'player.rb'

describe Player do
  it "has a name" do
    expect(subject.name).to be_a String
  end

  it "has a title" do
    expect(subject.title).to be_a String
  end

  it "returns it's name and title" do
    expect(subject.full_name).to eq(subject.name + " the " + subject.title)
  end

  it "makes a move" do
    subject.moves("rock")
    expect(subject.move).to eq "rock"
  end
end

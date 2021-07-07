require 'player'

describe Player do

  subject { Player.new("Andrew") }

  it "should initialise with a given name, and return it to the user when name is called" do
    expect(subject.name).to eq("Andrew")
  end

  it "should initialize with a score of 0, and return it to the user when score is called" do 
    expect(subject.score).to eq(0)
  end

  it "should allow the hand choice to be updated" do
    subject.choice = "Rock"
    expect(subject.choice).to eq("Rock")
  end
end

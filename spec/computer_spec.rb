require 'computer'

describe Computer do

  it "should initialise with the default name Luigi" do
    expect(subject.name).to eq(Computer::DEFAULT_NAME)
  end

  it "should initialize with a score of 0, and return it to the user when score is called" do 
    expect(subject.score).to eq(0)
  end

  it "should select Rock, Paper or Scissors at random" do
    srand(1)
    expect(subject.random_select).to eq "Paper"
  end
end

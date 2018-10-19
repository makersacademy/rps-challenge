require 'computer'

describe Computer do

  it "should have a name when created" do
    expect(subject.name).to eq "RPSbot"
  end

  it "should have a list of possible weapons" do
    list = ["ROCK", "PAPER", "SCISSORS"]
    expect(described_class::WEAPONS).to eq list
  end
  
  it "can randomly choose a weapon" do
    expect_any_instance_of(Array).to receive(:sample)
    subject.choose_weapon
  end
end

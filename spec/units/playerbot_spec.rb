require "playerbot"

describe PlayerBot do

  subject(:playerbot) { described_class.new("Murderbot") }

  it "has a name" do
    expect(playerbot.name).to eq "Murderbot"
  end

  it "randomly chooses between the options" do
    srand(3)
    expect(playerbot.random_choice).to eq "scissors"
  end

  it "sets a random choice" do
    srand(3)
    playerbot.make_choice
    expect(playerbot.choice).to eq "scissors"
  end

  
end

require "playerbot"

describe PlayerBot do

  subject(:playerbot) { described_class.new("Murderbot") }

  it "has a name" do
    expect(playerbot.name).to eq "Murderbot"
  end

  
end

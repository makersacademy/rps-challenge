require 'bot'

describe Bot do
  subject(:playbot) {described_class.new}

  it "has a name by default" do
    expect(playbot.name).to eq "PlayBOT"
  end

  it "has a selection by default" do
    expect(playbot.selection).to_not be nil
  end

end

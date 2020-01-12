require 'player'

describe Player do
  subject(:shaun){ described_class.new("Shaun") }

  it "returns the player's name" do
    expect(shaun.name).to eq "Shaun"
  end

end

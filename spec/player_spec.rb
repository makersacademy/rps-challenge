require 'player'

describe Player do

  it "has a name" do
    lenny = Player.new("Lenny")
    expect(lenny.name).to eq("Lenny")
  end

end

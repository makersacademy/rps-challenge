require 'player'

describe Player do

  subject(:player) {described_class.new("Russell")}

  it "has a name" do
    expect(player.name).to eq 'Russell'
  end

end

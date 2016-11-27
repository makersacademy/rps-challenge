require 'player'

describe Player do

  subject(:player) {described_class.new("Russell")}

  it "has a name" do
    expect(player.name).to eq 'Russell'
  end

  it "is is active to begin with" do
    expect(player.is_active?).to be true
  end



end

require 'player'

describe Player do
  subject(:player) { Player.new("Harrison") }

  it "should have a name" do
    expect(player).to have_attributes(name: "Harrison")
  end

end
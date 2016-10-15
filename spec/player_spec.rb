require 'player'

describe Player do
  subject(:player1) { described_class.new }

  it "records the player's name" do
    player1.set_name("David Miller")
    expect(player1.name).to eq "David Miller"
  end

end

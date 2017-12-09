require 'player'

describe Player do
  subject(:player) {described_class.new("Xin")}

  it "confirms players' name" do
    expect(player.name).to eq "Xin"
  end
end

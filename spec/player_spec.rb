require 'player'

describe Player do
  let(:imtiyaz) { Player.new("Imtiyaz")}
  it "should return the name of the player" do
    expect(imtiyaz.name).to eq "Imtiyaz"
  end
end

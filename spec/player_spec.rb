require 'player'

describe Player do
  it "should have a name" do
    bernard = described_class.new("Bernard")
    expect(bernard.name).to eq "Bernard"
  end

end
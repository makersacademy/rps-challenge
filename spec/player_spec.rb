require 'player'

describe Player do
  subject { Player.new("dumb") }

  it "Correctly returns the name" do
    expect(subject.name).to eq("dumb")
  end

end

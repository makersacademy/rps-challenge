require 'player'

describe Player do

  subject { described_class.new("James") }

  it "should return the player's name" do
    expect(subject.name).to eq "James"
  end
end

require 'turn'

describe Turn do
  subject { described_class.new(:rock) }

  it "stores the player's choice" do
    expect(subject.choice).to eq :rock
  end
end

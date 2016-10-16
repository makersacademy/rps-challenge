require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  it "initializes a new computer called Bob" do
    expect(computer.com_name).to eq "Bob"
  end

  it "allows computer to pick a weapon" do
    allow(computer).to receive(:pick).and_return(:rock)
    expect(computer.pick).to eq :rock
  end

end

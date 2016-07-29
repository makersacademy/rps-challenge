require "computer"

describe Computer  do

  subject(:computer) { described_class.new }

  it "selects a weapon" do
    allow(computer).to receive(:weapon_selection).and_return("Rock")

    expect(computer.weapon_selection).to eq "Rock"
  end

end

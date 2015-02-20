require 'player'

describe Player do

  let(:james) { Player.new("James") }
  let(:item) { double :item }

  it "can enter in their name" do
    expect(james.name).to eq "James"
  end

  it "can choose to play a rock" do
    expect(item).to receive(:items).and_return(:rock => "rock")
    james.select_weapon(:rock, item)
    expect(james.weapon).to eq "rock"
  end


end
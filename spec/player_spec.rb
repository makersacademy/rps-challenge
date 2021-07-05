require "player"

describe Player do
  subject(:player){ described_class.new('Jake') }
  
  it "remembers its name" do
    expect(player.name).to eq 'Jake'
  end

  it "remembers its roll" do
    expect(player.choice('Rock')).to eq 'Rock'
  end
end
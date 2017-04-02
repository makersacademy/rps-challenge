require 'player'

describe Player do
  subject(:player) {described_class.new('JJ')}

  it "Initialize the class with a name" do
    expect(player.name).to eq 'JJ'
  end
end

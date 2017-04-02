require 'player'

describe Player do
  subject(:player) {described_class.new('JJ')}

  it "Initialize the class with a name" do
    expect(player.name).to eq 'JJ'
  end

  it "Can choose rock and it changes the variable choice" do
    player.rock
    expect(player.choice).to eq player.rock
  end
  
end

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

  it "Can choose paper and it changes the variable choice" do
    player.paper
    expect(player.choice).to eq player.paper
  end

  it "Can choose scissors and it changes the variable choice" do
    player.scissors
    expect(player.choice).to eq player.scissors
  end
  
end

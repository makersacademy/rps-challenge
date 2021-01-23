require 'game'

describe Game do
  subject(:game) { described_class.new(player, opponent)}
  let(:player) { double :player, name: "Kelly"}
  let(:opponent) { double :opponent, choice: "Rock" }

  #Unsure about this test
  it 'instantiates with a player' do
    expect(game.player.name).to eq "Kelly"
  end
  
  #Unsure about this test
  it 'instantiates with a opponent' do
    expect(game.opponent.choice).to eq "Rock"
  end
end

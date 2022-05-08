require 'player'

describe Player do
  let(:player) { described_class.new('Clodius') }
  it "should return player's name" do
    expect(player.name).to eq('Clodius')
  end

  xit 'allows a player to choose a weapon' do
  end
end

require 'player'

describe Player do
  let(:player) {described_class.new('Clodius')}
  it "should return player's name" do
    expect(player.name).to eq('Clodius')
  end
end

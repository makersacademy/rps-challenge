require 'player'

describe Player do

  subject(:player) { Player.new(name1)}
  let(:name1) { double :player1 }
  let(:choice) {double 'move selection'}

  it "initializes with a player name" do
    expect(player.name).to eq name1
  end

  describe '#turn' do
    it "returns users move selection" do
      expect(player.turn(choice)).to eq choice
    end
  end
end

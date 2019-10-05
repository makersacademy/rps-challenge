require 'player'

describe Player do

  subject(:player) { Player.new(player1)}
  let(:player1) { double :player1}
  let(:choice) {double 'move selection'}

  it "initializes with a player name" do
    expect(player.player1).to eq player1
  end

  describe '#turn' do
    it "returns users move selection" do
      expect(player.turn(choice)).to eq choice
    end
  end
end

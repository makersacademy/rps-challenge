require 'game'
require 'player'

describe Game do 
  let(:player_1) { double 'player_1' }
  let(:player_2) { double 'player_2' }
  subject(:game) { described_class.new(player_1, player_2) }

  context '#initialize' do 
    it "initializes with Player as an argument" do 
      allow(game.player_1).to receive(:name)
    end 
  end

  context '#result' do 
    it "returns true if it's a draw" do 
      allow(player_1).to receive(:choice).and_return(:rock)
      allow(player_2).to receive(:choice).and_return(:rock)
      expect(game.result).to eq "It's a draw!"
    end

    it "returns winner" do 
      allow(player_1).to receive(:choice).and_return(:rock)
      allow(player_2).to receive(:choice).and_return(:scissors)
      expect(game.result).to eq "#{game.player_1.name} wins!"
    end
  end
end
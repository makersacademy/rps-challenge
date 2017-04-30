require 'game'

describe Game do

  subject(:game) { described_class.new(options) }
  let(:options) { {"player_name" => "Daniel", "player_tool" => :rock, "skynet_tool" => :scissors} }


  describe '#player_name' do
    it 'returns player name' do
      expect(game.player_name).to eq 'Daniel'
    end
  end

  describe '#player_tool' do
    it 'returns players tool' do
      expect(game.player_tool).to eq :rock
    end
  end
end 

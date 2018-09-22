require 'game'

describe Game do
  let(:dwayne_johnson) { double :player }
  let(:scissor_sisters) { double :player }
  let(:rps) { described_class.new(dwayne_johnson, scissor_sisters) }

  describe '#player_1' do
    it 'returns the player 1 object' do
      expect(rps.player_1).to eq dwayne_johnson
    end
  end

  describe '#player_2' do
    it 'returns the player 2 object' do
      expect(rps.player_2).to eq scissor_sisters
    end
  end
end

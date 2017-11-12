require 'game'

describe Game do
  let(:game){ described_class.new('Player')}
  context "When starting a new game" do
    it 'Should have a player' do
      expect(game.player).to eq('Player')
    end
  end
end

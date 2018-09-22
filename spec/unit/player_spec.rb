require 'player'

describe Player do
  subject(:player) { described_class.new('claudia') }
  context '#initialize' do
    it 'returns its name' do
      expect(player.name).to eq 'claudia'
    end
  end

  context '#choice' do
    it "returns player's choice" do
      player.choice('Paper')
      expect(player.player_choice).to eq 'Paper'
    end
  end
end

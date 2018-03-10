require 'player'

describe Player do
  subject(:player) { described_class.new('Alex') }

  describe '#name' do
    it 'returns the name of player' do
      expect(player.name).to eq 'Alex'
    end
  end

  describe "#option" do
    it 'responds to method option' do
      expect(player).to respond_to(:option).with(1).argument
    end
  end

end

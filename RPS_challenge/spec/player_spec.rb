require 'player'

describe Player do
  subject(:joe_wroe) { described_class.new('Joe Wroe')}

  describe '#name' do

    it 'returns the players name' do
      expect(joe_wroe.name).to eq 'Joe Wroe'
    end

  end
end

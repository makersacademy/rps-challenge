require 'player'

RSpec.describe Player do
  let (:player) { described_class.new('Ralph') }
  describe '#name' do
    it 'returns the name of player' do

      expect(player.name).to eq player.name

    end
  end

end

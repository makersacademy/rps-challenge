require 'player'

describe Player do
  let(:player) {Player.new("Anna")}

  describe 'returns player\'s name' do
    it 'returns name' do
      expect(player.name).to eq("Anna")
    end
  end
end

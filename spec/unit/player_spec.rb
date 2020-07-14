require 'player'

describe Player do
  let(:catriona) { Player.new('Catriona') }

  describe '#name' do
    it 'returns the name' do
      expect(catriona.name).to eq 'Catriona'
    end
  end

  describe '#selection' do
    it 'returns the player selection' do
      catriona.move('rock')
      expect(catriona.selection).to eq 'rock'
    end
  end
end

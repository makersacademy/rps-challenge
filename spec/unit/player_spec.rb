require './lib/player'

describe Player do
  subject(:player1) {Player.new('tanil')}
  describe 'name' do
    it 'returns the name do' do
        expect(player1.name).to eq 'tanil'
    end
  end

  describe 'status' do
    it 'returns true before starting game' do
      expect(player1.status).to eq true
    end
  end
end
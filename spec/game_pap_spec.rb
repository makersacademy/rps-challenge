require 'game_pap'

describe Paper do
  subject(:pickpaper) { Paper.new }
  describe '#game' do
    it 'returns true when called' do
      expect(pickpaper.game).to be_truthy
    end
  end
end

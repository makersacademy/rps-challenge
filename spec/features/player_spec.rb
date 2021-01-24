require './models/player'

describe 'Player' do
  subject(:mark) { Player.new('Mark')}

  describe '#name' do
    it 'displays name' do
      expect(mark.name).to eq 'Mark'
    end
  end
end

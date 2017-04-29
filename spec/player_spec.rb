require 'player'
describe 'Player' do
  subject = Player.new
  describe '#score' do
    it 'expects a new player to have a default score of 0' do
      expect(subject.score).to eq 0
    end
  end
end

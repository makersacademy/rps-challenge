require 'player'
describe 'Player' do
  subject = Player.new
  describe '#score' do
    it 'expects a new player to have a default score of 0' do
      expect(subject.score).to eq 0
    end
  end

  describe '#attack_with_rock' do
    it 'expects player to attack the computer' do
      expect(subject).to respond_to(:attack_with_rock).with(1).argument
    end
  end
end

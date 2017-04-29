require 'player'
describe 'Player' do
  subject = Player.new
  computer = Computer.new

  describe '#score' do
    it 'expects a new player to have a default score of 0' do
      expect(subject.score).to eq 0
    end
  end

  describe '#attack_with_rock' do
    it 'expects player to respond to #attack_with_rock' do
      expect(subject).to respond_to(:attack_with_rock).with(1).argument
    end
  end

  describe '#attack_with_rock score' do
    it 'expects the player to win when computer plays scissors' do
      expect{subject.attack_with_rock(computer)}.to change{subject.score}.by 1
    end
  end
end

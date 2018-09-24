require 'winner'

describe Winner do
  describe '#winner' do
    it 'Announces at tie' do
      subject = described_class.new("rock", "rock")
      expect(subject.who_wins).to eq 'It\'s a tie!'
    end

    it 'Announces player 1 wins' do

    end
  end
end

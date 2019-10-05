require 'game'

describe Game do
  let(:player) { 'player' }
  let(:subject) { described_class.new(player) }

  describe '#random_choice' do
    before do
      allow(subject).to receive(:random_choice).and_return('Paper')
    end
    it 'choose randomly' do
      expect(subject.random_choice).to eq 'Paper'
    end
  end

  describe '#match' do
    it 'checks if the match is a tie' do
      expect(subject.match('Rock', 'Rock')).to eq 'This is a tie!'
    end

    it 'checks if player wins' do
      expect(subject.match('Rock', 'Scissors')).to eq 'You win!'
    end

    it 'checks if player loose' do
      expect(subject.match('Rock', 'Paper')).to eq 'You loose!'
    end
  end
end

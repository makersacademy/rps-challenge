require 'game'

describe Game do

  subject { described_class.new('Dave') }

  describe '#play' do
    it { is_expected.to respond_to(:play).with(1).argument }

    it 'saves the player\'s move' do
      subject.play('Paper')
      expect(subject.player_move).to eq 'Paper'
    end

    it 'calls method #random_move' do
      expect(subject).to receive(:random_move)
      subject.play('Rock')
    end

    it 'returns a random move into instance variable @computer_move' do
      srand(0)
      subject.play('Rock')
      expect(subject.computer_move).to eq 'Rock'
    end

    it 'returns \'It\'s a draw!\' if the moves are the same' do
      srand(0)
      subject.play('Rock')
      expect(subject.result).to eq "It's a draw!"
    end

    it 'returns \'You\'re a winner baby!\' if the player wins' do
      srand(0)
      subject.play('Paper')
      expect(subject.result).to eq "You're a winner baby!"
    end

    it 'returns \'You lose!\' if the player loses' do
      srand(0)
      subject.play('Scissors')
      expect(subject.result).to eq "You lose!"
    end
  end

end

require 'game'

describe Game do
  let(:subject) { described_class.create("Ayelisha") }

  it 'stores a players name' do
    expect(subject.player_name).to eq "Ayelisha"
  end

  describe '#self.instance' do
    it 'returns an instance of a game class' do
      expect(subject).to eq Game.instance
    end
  end

  describe '#winner' do
    it 'Rock beats scissors' do
      subject.player_one_move("Rock")
      subject.player_two_move("Scissors")
      expect(subject.winner).to eq subject.player_name
    end
  end

  describe '#winner' do
    it 'Scissors beats Paper' do
      subject.player_one_move("Paper")
      subject.player_two_move("Scissors")
      expect(subject.winner).to eq "The Computer"
    end
  end

  describe '#winner' do
    it 'The same choice means a draw' do
      subject.player_one_move("Paper")
      subject.player_two_move("Paper")
      expect(subject.winner).to eq "Draw"
    end
  end



end

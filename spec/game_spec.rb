require 'game'

describe Game do
  let(:subject) { described_class.create("Ayelisha", "Elliott") }

  it 'stores a players name' do
    expect(subject.player_one).to eq "Ayelisha"
  end

  it 'stores a second players name' do
    expect(subject.player_two).to eq "Elliott"
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
      expect(subject.winner).to eq subject.player_one
    end
  end

  describe '#winner' do
    it 'Scissors beats Paper' do
      subject.player_one_move("Paper")
      subject.player_two_move("Scissors")
      expect(subject.winner).to eq "Elliott"
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

require 'game'

describe Game do
  player_one = Player.new("Ayelisha")
  player_two = Player.new("Elliott")
  let(:subject) { described_class.create(player_one, player_two) }

  it 'stores a players name' do
    expect(subject.player_one.name).to eq "Ayelisha"
  end

  it 'stores a second players name' do
    expect(subject.player_two.name).to eq "Elliott"
  end

  describe '#self.instance' do
    it 'returns an instance of a game class' do
      expect(subject).to eq Game.instance
    end
  end

  describe '#winner' do
    it 'Rock beats scissors' do
      subject.player_one.move("Rock")
      subject.player_two.move("Scissors")
      expect(subject.winner).to eq "Ayelisha"
    end
  end

  describe '#winner' do
    it 'Scissors beats Paper' do
      subject.player_one.move("Paper")
      subject.player_two.move("Scissors")
      expect(subject.winner).to eq "Elliott"
    end
  end

  describe '#winner' do
    it 'The same choice means a draw' do
      subject.player_one.move("Paper")
      subject.player_two.move("Paper")
      expect(subject.winner).to eq "Draw"
    end
  end

end

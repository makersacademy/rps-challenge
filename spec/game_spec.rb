require 'game'

describe Game do
  let(:subject) { described_class.create("Ayelisha") }

  describe '#self.instance' do
    it 'returns an instance of a game class' do
      expect(subject).to eq Game.instance
    end
  end
  it 'stores a players name' do
    expect(subject.player_name).to eq "Ayelisha"
  end

end

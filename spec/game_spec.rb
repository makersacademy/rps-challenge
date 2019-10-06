require 'game'

describe Game do
  describe '#random_option' do
    it 'generates a random option to play against the player' do
      allow(subject).to receive(:random_option) {"Rock"}
      expect(subject.random_option).to eq "Rock"
    end
  end
end

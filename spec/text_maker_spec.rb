require 'text_maker'

describe TextMaker do
  let(:player) { double(:player, name: 'Bob', choice: :rock) }
  describe '#title' do
    it 'returns a string representing the title' do
      expect(subject.title(player, player)).to eq "Bob VS Bob"
    end
  end
  describe '#choice_text' do
    it 'returns a string with the name and choice' do
      expect(subject.choice_text(player)).to eq "Bob chooses rock"
    end
  end
  describe '#play_text' do
    it 'returns a string with the name and choices of both players and the winner' do
      expect(subject.play_text(player, player, player.name)).to eq "Bob chooses rock,<br>Bob chooses rock,<br>Bob Wins!"
    end
  end
end

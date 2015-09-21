require 'game'


describe Game do
  let(:choice) {double :choice}
  let(:rock) {double :rock}

  describe '#computer_player' do
    it 'computer player can return a random choice' do
      allow(subject).to receive(:computer_play).and_return(:rock)
      expect(subject.computer_play).to eq(:rock)
    end
  end

  describe '#player' do
    it 'player can win' do
      subject.play(:choice)
      allow(subject).to receive(:player_win?).and_return(true)
      expect(subject.player_win?).to eq(true)
    end

    it 'player can lose' do
      subject.play(:choice)
      allow(subject).to receive(:player_lose?).and_return(true)
      expect(subject.player_lose?).to eq(true)
    end

    it 'player can draw' do
      subject.play(:choice)
      allow(subject).to receive(:player_draw?).and_return(true)
      expect(subject.player_draw?).to eq(true)
    end

    it 'player can win and opponents move is returned' do
      subject.play(:rock)
      expect(subject.opponent_play_win(:rock)).to eq(:scissors)
    end

    it 'player can lose and opponents move is returned' do
      subject.play(:paper)
      expect(subject.opponent_play_lose(:paper)).to eq(:scissors)
    end
  end
end

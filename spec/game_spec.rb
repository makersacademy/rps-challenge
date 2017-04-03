describe Game do
  let(:first_person) {double(:person)}
  let(:second_person) {double(:person)}
  let(:game) {described_class.new(first_person, second_person)}

  before do
    allow(first_person).to receive(:name).and_return("Freddy")
    allow(second_person).to receive(:name).and_return("Lucy")
  end

  describe '#play' do
    it 'should determine a winner' do
      expect(game.play('Rock', 'Scissors')).to eq(:player_1_win)
    end

    it 'should determine a loser' do
      expect(game.play('Rock', 'Paper')).to eq(:player_2_win)
    end

    it 'should flag if there is a draw' do
      expect(game.play('Rock', 'Rock')).to eq(:draw)
    end
  end

end

describe Game do
  let(:first_person) {double(:person)}
  let(:second_person) {double(:person)}
  let(:game) {described_class.new(first_person, second_person)}

  before do
    allow(first_person).to receive(:name).and_return("Freddy")
    allow(second_person).to receive(:name).and_return("Lucy")
  end

  describe '#play' do
    it 'Should have rock beat scissors (P1) win' do
      expect(game.play('Rock', 'Scissors')).to eq(:player_1_win)
    end

    it 'Should have scissors beat paper (P1) win' do
      expect(game.play('Scissors', 'Paper')).to eq(:player_1_win)
    end

    it 'Should have paper beat rock (P1) win' do
      expect(game.play('Paper', 'Rock')).to eq(:player_1_win)
    end

    it 'Should have rock beat scissors (P2) win' do
      expect(game.play('Scissors', 'Rock')).to eq(:player_2_win)
    end

    it 'Should have scissors beat paper (P2) win' do
      expect(game.play('Paper', 'Scissors')).to eq(:player_2_win)
    end

    it 'Should have paper beat rock (P2) win' do
      expect(game.play('Rock', 'Paper')).to eq(:player_2_win)
    end

    it 'Should have rock and rock draw' do
      expect(game.play('Rock', 'Rock')).to eq(:draw)
    end

    it 'Should have paper and paper draw' do
      expect(game.play('Paper', 'Paper')).to eq(:draw)
    end

    it 'Should have scissors and scissors draw' do
      expect(game.play('Scissors', 'Scissors')).to eq(:draw)
    end
  end

end

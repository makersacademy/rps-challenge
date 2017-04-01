describe Game do
  let(:name) {double(:name)}
  let(:game) {described_class.new(name)}

  describe '#play' do
    it 'should determine a winner' do
      expect(game.play('Rock', 'Scissors')).to eq('Congrats! You won!')
    end

    it 'should determine a loser' do
      expect(game.play('Rock', 'Paper')).to eq('Sorry, you lost!')
    end

    it 'should flag if there is a draw' do
      expect(game.play('Rock', 'Rock')).to eq("It's a draw!")
    end
  end

end

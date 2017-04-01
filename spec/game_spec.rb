describe Game do
  let(:name) {double(:name)}
  let(:game) {described_class.new(name)}

  describe '#play' do
    it 'should determine a winner' do
      expect(game.play('Rock', 'Scissors')).to eq('Congrats! You won!')
    end
  end

end

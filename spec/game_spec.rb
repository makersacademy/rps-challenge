describe Game do
  subject(:game) {described_class.new}
  let(:choice) (double :choice)

  context 'game is initialised' do
    it 'records the players choice' do
      expect (game.array[0]).to eq(choice)
    end
  end
end

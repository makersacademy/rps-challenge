describe Game do
  
  subject(:game) {described_class.new("Paul")}
  # let(:string) {double :string}

  context 'upon initialization' do
    it 'sets player name variable' do
      expect(game.player_name).to eq('Paul')
    end
  end

  context '#random_choice' do
    it 'returns one of the choices at random' do
      expect(['ROCK', 'PAPER', 'SCISSORS']).to include(game.random_choice)
    end
  end

end
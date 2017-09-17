require './lib/game'

describe Game do
  let(:player) {Player.new("Marcus")}
  subject(:game) {described_class.new(:player, "Rock")}

  it 'is initialized with the player choice' do
    expect(game.choice).to eq 'Rock'
  end

  it 'is initialzed with the cpu choice decided' do
    allow(game).to receive(:computer_choice) {"Rock"}
    expect(game.computer_choice).to eq "Rock"
  end

  describe '#rps_game' do
    it 'is expected to return an outcome for the game' do
      allow(game).to receive(:computer_choice) { 'Paper' }
      expect(game.rps_game).to eq "You win!"
    end
  end
end

require './lib/game'

describe Game do

  let(:choice) {double :choice}
  subject(:game) {described_class.new(choice)}

  context 'game is initialised' do
    it 'records the players choice' do
      expect(game.turn[0]).to eq(choice)
    end
  end
end

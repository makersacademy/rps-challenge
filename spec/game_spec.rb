require './lib/game.rb'

describe Game do
  let(:test_game) { Game.new('Nata', 'rock') }
  it 'contains the name of a player' do
    expect(test_game.name).to eq 'Nata'
  end

  describe '#outcome' do
    it 'tells you if you won' do
      allow(test_game).to receive(:opponent_weapon).and_return('scissors')
      expect(test_game.outcome).to eq(:win)
    end
  end
end

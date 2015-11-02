require 'game'

describe Game do
  let(:game) { Game.new }

  before(:each) do
    allow(game).to receive(:picker).and_return('cat')
  end

  it 'allows input of a choice' do
    game.choice('goku')
    expect(game.user_choice).to eq("goku")
  end

  it 'increments the turn' do
    expect{ game.battle_check }.to change{ game.turn }.by(1)
  end

  describe 'loss-win-draw' do
    it 'can win' do
      game.choice('goku')
      expect(game.battle_check).to eq "GOKU BEATS CAT"
    end

    it 'can loose' do
      game.choice('patrick')
      expect(game.battle_check).to eq "CAT BEATS PATRICK"
    end

    it 'can draw' do
      game.choice('cat')
      expect(game.battle_check).to eq "DRAAAAW"
    end
  end
end

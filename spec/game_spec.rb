require 'game'

describe Game do
  let(:player)                { double :player, name: 'player' }
  let(:player_class)          { double :player_class, new: player }
  subject(:game)              { described_class.new(player) }

  it 'Should return player name' do
    expect(game.player_1.name).to eq 'player'
  end

  it 'Should return a valid weapon for machine' do
    expect(Game::WEAPONS).to include(game.machine_select_weapon)
  end

  it "Should decide a winner" do

  end
end

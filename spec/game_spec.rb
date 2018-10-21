require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:cp_weapon) { game.cp_weapon }

  it 'should give the player move options' do
    expect(game.player_choose_weapon('Rock')).to eq 'Rock'
  end

  it 'draws when players choose the same weapon' do
    game.player_choose_weapon('Rock')
    allow(game.cp_choose_weapon).to receive('Rock').and_return('Rock')
    expect(game.announce_winner).to eq 'You drew!'
  end
end

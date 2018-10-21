require 'game'

describe Game do
  subject(:game) { described_class.new }

  it 'should give the player move options' do
    game.player_choose_weapon('Rock').to eq 'Rock'
  end
end

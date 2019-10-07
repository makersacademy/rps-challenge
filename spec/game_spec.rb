require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:cp_weapon) { game.cp_weapon }

  it 'should give the player move options' do
    expect(game.player_choose_weapon('Rock')).to eq 'Rock'
  end

end

require 'game'

describe Game do
  subject(:game) { Game.new }

  it { is_expected.to respond_to :bot_move }
end
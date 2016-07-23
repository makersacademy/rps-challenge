require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player, select_weapon: :rock }
  let(:player_2) { double :computer, select_weapon: :paper }


end

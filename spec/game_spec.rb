require 'spec_helper'
require 'game'

describe Game do
  let(:player_class) {double :player_class, new: player}
  let(:player) { double :player, pick_weapon: nil }
  let(:computer_class) { double :computer_class, new: computer}
  let(:computer) { double :computer }
  subject(:game) {described_class.new(player_class.new, computer_class.new)}

  it 'should respond to the method choose weapon' do
    game.choose_weapon
    expect(player).to have_received(:pick_weapon)
  end
end

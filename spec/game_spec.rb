require 'spec_helper'
require 'game'

describe Game do
  let(:player_class) {double :player_class, new: player}
  let(:player) { double :player, pick_weapon: nil }
  let(:computer_class) { double :computer_class, new: computer}
  let(:computer) { double :computer, weapon_assignment: nil }
  subject(:game) {described_class.new(player_class.new, computer_class.new)}

  it 'should respond to the method choose weapon' do
    game.choose_weapon("rock")
    expect(player).to have_received(:pick_weapon).with("rock")
  end

  it 'should respond to the method computer choice' do
    game.computer_choice
    expect(computer).to have_received(:weapon_assignment)
  end
end

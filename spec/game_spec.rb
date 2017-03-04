require 'game'

describe Game do
  subject(:game) {described_class.new}

  it 'stores a list of possible weapons' do
    expect(game.weapons).to be_an_instance_of Array
  end

  it 'can choose a weapon at random' do
    computer_choice = game.random_weapon_selection
    expect(game.weapons).to include computer_choice
  end


end

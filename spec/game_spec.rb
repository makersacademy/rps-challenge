require 'game'

describe Game do
  it 'returns a weapon from the list' do
    weapon = Game.choose_weapon
    expect(Game::WEAPONS).to include(weapon)
  end 
end
require 'game'

describe Game do
  it 'returns a weapon from the list' do
    weapon = Game.choose_weapon
    expect(Game::WEAPONS).to include(weapon)
  end
  
  it 'should return a random weapon' do
    expect(Game::WEAPONS).to receive(:sample).and_return(:scissors)
    Game.choose_weapon
  end

  it 'should return a winner' do
  
  end
end

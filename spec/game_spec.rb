require 'game'

describe Game do

  it 'should return a weapon from the list' do
    weapon = Game.choose_weapon
    expect(Game::WEAPONS).to include(weapon)
  end

  it 'should return a random weapon' do
    expect(Game::WEAPONS).to receive(:sample).and_return(Paper)
    Game.choose_weapon
  end

  it 'should return a draw' do
    expect(Game::WEAPONS).to receive(:sample).and_return(Paper)
    Game.choose_weapon
    expect(Game.resolve("Paper")).to eq(:draw)
  end

  it 'should return a win' do
    expect(Game::WEAPONS).to receive(:sample).and_return(Paper)
    Game.choose_weapon
    expect(Game.resolve("Rock")).to eq(:win)
  end

  it 'should return a loss' do
    expect(Game::WEAPONS).to receive(:sample).and_return(Paper)
    Game.choose_weapon
    expect(Game.resolve("Scissors")).to eq(:lose)
  end




end
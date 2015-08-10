require 'game'

describe Game do

  it 'can register a session' do
    session = double()
    expect(subject.gamers).to include(subject.register session)
  end

  it 'can add a new game' do
    new_game = Game.new
    Game.existing_games_setter(new_game)
    expect(Game.existing_games_getter).to include new_game
  end

end

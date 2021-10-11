require "control_games"

describe ControlGames do
  
  it 'Create instance of the object' do
    ControlGames.create
    expect(ControlGames.instance).to be_instance_of ControlGames
  end
  
  it 'Add games for multi player' do
    game = double(:game)
    games = ControlGames.new
    expect(games.add(game)).to eq([game])
  end
  
end
 
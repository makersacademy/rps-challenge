require 'game'

describe Game do

  subject(:player) { double :user, :player_name => "Irina" }

  it 'is created with a human player' do
    allow(player).to receive(:player_name).and_return("Irina")
    game = Game.create(player)
    expect(game).to be_an_instance_of(Game)
  end

  it 'can have a user choose something' do
    game = Game.create(player)
    expect(player).to receive(:make_a_choice)
    game.user_chooses("Rock")
  end
end

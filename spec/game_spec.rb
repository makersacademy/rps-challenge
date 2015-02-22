require 'game'

describe Game do

  let(:game){Game.new}
  let(:first_player){Player.new 'Player 1'}
  let(:second_player){Player.new 'Player 2'}

context "Adding a player" do

  it 'should be able to add a player' do
    game.add_player(first_player)
    expect(game.first_player).to eq first_player
  end

  it 'should be able to add a second player' do
    game.add_player(first_player)
    game.add_player(second_player)
    expect(game.second_player).to eq second_player
  end

end


  
end
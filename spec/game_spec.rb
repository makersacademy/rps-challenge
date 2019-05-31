
require 'game'

describe Game do 
  let(:game) { Game.create }
  let(:player_class) { spy(:player_class, :new => player) }
  let(:player) { spy(:player) } 
  
  it 'chooses rock paper scissors randomly' do
    expect(['Rock','Paper','Scissors']).to include(game.computer_move)
  end 

  it 'can return player1 name' do 
    game = Game.new 
    game.add_player("Player1", player_class)
    game.player_name(1)
    expect(player).to have_received(:name)
  end

  it 'should recognise check_winner method' do 
    expect(game).to respond_to(:check_winner).with(2)
  end

  it 'should know that rock beats scissors' do
    expect(game.check_winner("Rock","Scissors")).to eq("Player one wins!")
  end 

  it 'should know that scissors beats paper' do
    expect(game.check_winner("Scissors","Paper")).to eq("Player one wins!")
  end 

  it 'should know that paper beats rock' do
    expect(game.check_winner("Rock","Paper")).to eq("Player two wins!")
  end 
end 
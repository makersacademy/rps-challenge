
require 'game'

describe Game do 
  let(:game) { Game.instance}
  let(:player_class) { spy(:player_class, :new => player) }
  let(:player) { spy(:player, :name => "Lauren") } 
  
  it 'chooses rock paper scissors randomly' do
    expect(['Rock','Paper','Scissors']).to include(game.computer_move)
  end 

  it 'can return player1 name' do 
    game = Game.new 
    game.add_player("Player1", player_class)
    game.player_name(1)
    expect(player).to have_received(:name)
  end
  it 'can return player2 name' do 
    game = Game.new 
    game.add_player("Player1", player_class)
    game.add_player("Player2", player_class)
    game.player_name(2)
    expect(player).to have_received(:name)
  end


  it 'should recognise check_winner method' do 
    expect(game).to respond_to(:check_winner).with(2)
  end

  it 'should know that rock beats scissors' do
    game.add_player("Lauren", player_class)
    expect(game.check_winner("Rock","Scissors")).to eq("Lauren wins!")
  end 

  it 'should know that scissors beats paper' do
    game.add_player("Lauren", player_class)
    expect(game.check_winner("Scissors","Paper")).to eq("Lauren wins!")
  end 

  it 'should know that paper beats rock' do
    game.add_player("Lauren", player_class)
    expect(game.check_winner("Rock","Paper")).to eq("Nino wins!")
  end 

  it 'swaps turns from player 1 to player 2' do
    game = Game.new
    game.add_player("Lauren")
    game.add_player("Nino")
    game.swap_turns
    expect(game.turn).to eq(2)
  end 
end 
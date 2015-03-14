require_relative '../app/models/one_player_game'

describe 'OnePlayerGame' do 
  let(:game){OnePlayerGame.new}
  let(:player){double :player, :selection=>:scissors}
  let(:computer){double :computer, :selection=>:scissors}

  def set_players
    game.player = player
    game.computer = computer
  end  

  it 'knows when it is a draw' do   
    set_players
    expect(game.determine_winner).to eq(:draw)       
  end  

  it 'knows that paper beats rock' do 
    allow(player).to receive(:selection) { :paper }
    allow(computer).to receive(:selection) { :rock }
    set_players
    expect(game.determine_winner).to eq(player)
  end

  it 'knows that rock beats scissors' do

  end 
    
end  
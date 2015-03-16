require_relative '../app/models/game'

describe 'Game' do 
  let(:game){Game.new}
  let(:player){double :player, :selection=>:scissors}
  let(:computer){double :computer, :selection=>:scissors}

  def set_players
    game.player1 = player
    game.player2 = computer
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
    allow(player).to receive(:selection) { :scissors }
    allow(computer).to receive(:selection) { :rock }
    set_players
    expect(game.determine_winner).to eq(computer)
  end 
    
  it 'knows that scissors beats paper' do
    allow(player).to receive(:selection) { :scissors }
    allow(computer).to receive(:selection) { :paper }
    set_players
    expect(game.determine_winner).to eq(player)
  end   
end  
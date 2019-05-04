
# had to change to capital letters here
# using double 

describe RPS do 
  # let (:player_1) { double(:player, choice: 'Scissors', name: 'Alex') } 
  # let (:player_2) { double(:player, choice: 'Rock') } 
  
  it 'initates with 2 players' do  
    expect(RPS).to respond_to(:new).with(2).arguments    
  end 

  it 'calculates winner correctly' do 
    player_1 = Player.new('Scissors', 'Alex')
    player_2 = Player.new('Rock')
    rps = described_class.new(player_1, player_2)
    expect(rps.winner).to eq 'Computer'
  end 

  it 'calculates winner correctly' do 
    player_1 = Player.new('Rock', 'Alex')
    player_2 = Player.new('Scissors')
    rps = described_class.new(player_1, player_2)
    expect(rps.winner).to eq 'Alex'
  end 

  it 'calculates winner correctly' do 
    player_1 = Player.new('Paper', 'Alex')
    player_2 = Player.new('Scissors')
    rps = described_class.new(player_1, player_2)
    expect(rps.winner).to eq 'Computer'
  end 

  it 'calculates winner correctly' do 
    player_1 = Player.new('Paper', 'Alex')
    player_2 = Player.new('Paper')
    rps = described_class.new(player_1, player_2)
    expect(rps.winner).to eq "It's a draw"
  end 
end

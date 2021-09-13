require 'rps'

describe RPS do
  it 'paper wins with rock' do
    rps = RPS.new(player_1_choice: 'ROCK', random_seed: 1)
    
    expect(rps.result).to eq(:computer)
  end

  it 'paper ties with paper' do
    rps = RPS.new(player_1_choice: 'PAPER', random_seed: 1)
     
    expect(rps.result).to eq(:tie)
  end

  it 'paper loses to scissors' do
    rps = RPS.new(player_1_choice: 'SCISSORS', random_seed: 1)
    
    expect(rps.result).to eq(:player)
  end

end 

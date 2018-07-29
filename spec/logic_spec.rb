require 'logic'

describe 'rock, paper scissors' do 
  it 'predicts correct result of rock-scissors' do 
    expect(find_winner('rock','scissors')).to eq("You win")
  end 
  it 'predicts correct result of scissors-rock' do 
    expect(find_winner('scissors','rock')).to eq("You lose")
  end 
  it 'predicts correct result of paper-rock' do 
    expect(find_winner('paper','rock')).to eq("You win")
  end 
  it 'predicts correct result of rock-paper' do 
    expect(find_winner('rock','paper')).to eq("You lose")
  end 
  it 'predicts correct result of paper-paper' do 
    expect(find_winner('paper','paper')).to eq("it's a draw")
  end 

end 
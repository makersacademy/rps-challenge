require 'game'

describe Game do 
  it 'must respond to result' do 
    expect(subject).to respond_to(:result)
  end

  it 'must take two players choice as an argument' do 
    expect(subject). to respond_to(:result).with(2).argument
  end

  it 'must determine Rock beats Scissors' do 
    expect(subject.result "Rock", "Scissors").to eq "Player 1 wins"
  end 

   it 'must determine Scissors beats Paper' do 
    expect(subject.result "Paper", "Scissors").to eq "Player 2 wins"
  end

  it 'must allow a draw' do 
    expect(subject.result "Paper", "Paper").to eq "Draw"
  end  
end
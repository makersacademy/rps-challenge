require 'computerPlayer.rb'

describe Computer do 
  it 'must respond to choose' do 
    expect(subject).to respond_to(:choose)
  end 

  it 'must must oly be allowed to choose Rock, Paper or Scissors' do
    srand(1)
    expect(subject.choose).to eq "Rock"
  end


  it 'must must oly be allowed to choose Rock, Paper or Scissors' do
    srand(3)
    expect(subject.choose).to eq "Paper"
  end

   it 'must must oly be allowed to choose Rock, Paper or Scissors' do
    srand(2)
    expect(subject.choose).to eq "Scissors"
  end
end
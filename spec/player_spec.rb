require 'player'

describe Player do 
  it 'must respond to choose ' do 
    expect(subject).to respond_to(:choose)
  end 

  it 'must respond to choice with one argument' do 
    expect(subject).to respond_to(:choose).with(1).argument
  end

  it 'must return the choice of the user' do 
    expect(subject.choose "Rock"). to eq "Rock"
  end

  it 'must not allow a choice other that Rock, Paper, scissors' do 
    expect{subject.choose "Fire"}.to raise_error "Must choose Rock, Paper or Scissors"
  end

  it 'must capiataize the choice' do 
    expect(subject.choose "rOCK").to eq "Rock"
  end
end
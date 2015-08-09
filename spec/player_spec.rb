require 'player'

describe Player do

  it 'can choose rock, paper or scissors' do
    expect(subject.choose('Rock')).to eq('Rock')
  end

  it 'raises an error if choice is not valid' do
    expect{subject.choose('Fountain Pen')}.to raise_error 'Please choose Rock, Paper or Scissors'
  end
  
end
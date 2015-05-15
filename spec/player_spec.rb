require 'player'

describe Player do
  it 'player can choose rock' do
  	subject.player_choice 'rock'
  	expect(subject.choice).to eq 'rock'
  end

  it 'player can choose paper' do
  	subject.player_choice 'paper'
  	expect(subject.choice).to eq 'paper'
  end

  it 'player can choose rock' do
  	subject.player_choice 'scissors'
  	expect(subject.choice).to eq 'scissors'
  end

  it 'player receives error if they try to choose anything other than rock' do
  	expect{ subject.player_choice 'orangutan' }.to raise_error "You can\'t use that in a rock, paper, scissors game!"
  end
end
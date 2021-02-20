require 'game'

describe RockPaperScissors do
    subject(:subject) { RockPaperScissors.new('Joanna') }

it 'should have a choice of either rock, paper or scissors' do
    allow(subject).to receive(:choice) { 'paper'}
    expect(subject.choice).to eq 'paper'
end
    
it 'should have a name' do
expect(subject.name).to eq 'Joanna'
end

it 'should know that paper beats rock' do
    allow(subject).to receive(:choice) { 'paper'}
    player_choice = 'rock'
    expect(subject.play(player_choice)).to eq('Computer wins')
end



end

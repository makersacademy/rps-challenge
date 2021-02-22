require 'game'

describe RockPaperScissors do
    subject(:subject) { RockPaperScissors.new('Joanna') }

it 'should have a choice of either rock, paper or scissors' do
    allow(subject).to receive(:choice) { 'paper'}
    expect(subject.choice).to eq 'paper'
end

it "should choose rock, paper, scissors at random" do
    expect(["rock","paper","scissors"]).to include(subject.choice)
  end
    
it 'should have a name' do
expect(subject.name).to eq 'Joanna'
end

it 'should know that paper beats rock' do
    player_choice = "rock"
    computer_choice = "paper"
    expect(subject.play(player_choice, computer_choice)).to eq "Computer wins"
end

it 'should know that scissors beat paper' do
    player_choice = "scissors"
    computer_choice = "paper"
    expect(subject.play(player_choice, computer_choice)).to eq "Joanna wins"
end

it 'should know that if player and computer choice are equal it is a draw' do
player_choice = "rock"
computer_choice = "rock"
expect(subject.play(player_choice, computer_choice)).to eq "It's a draw"
end
end

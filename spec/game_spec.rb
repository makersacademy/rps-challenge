require 'game'

describe Game do

  it '# expect game to respond to choice' do
    expect(subject).to respond_to(:choice)
  end

  it '# expect game to respond to computer_turn' do
    expect(subject).to respond_to(:computer_turn)
  end

  it 'expect player to win if he chooses rock and computer chooses scissors' do
    allow(subject).to receive(:computer_turn).and_return("scissors")
    expect(subject.take_turn("rock")).to eq("Player wins")
  end

  it 'expect player to lose if he chooses paper and computer chooses scissors' do
    allow(subject).to receive(:computer_turn).and_return("scissors")
    expect(subject.take_turn("paper")).to eq("Computer wins")
  end

  it 'expect game to be a draw if player chooses rock and computer chooses rock' do
    allow(subject).to receive(:computer_turn).and_return("rock")
    expect(subject.take_turn("rock")).to eq("Draw")
  end

  it 'expect program to tell player to enter either rock, paper or scissors if anything other is entered' do
    expect(subject.take_turn("lobster")).to eq("Please enter either rock, paper or scissors")
  end

end
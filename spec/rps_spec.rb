require 'rspls'

describe RPS do

  it 'has five weapons' do
    expect(subject.weapons.size).to eq 5
  end

  it 'player choose a weapon' do
    expect(subject.player1_choose('paper')).to eq 'paper'
  end

  it 'computer choose a weapon' do
    allow(subject).to receive(:computer_choose) { 'Spock' }
    expect(subject.computer_choose).to eq 'Spock'
  end

  it 'player1 chooses rock, computer scissors' do
    subject.player1_choose 'rock'
    allow(subject).to receive(:computer_choose) { :scissors }
    expect(subject.winner).to eq "Player wins!"
  end

  it 'player1 chooses Spock, computer lizard' do
    subject.player1_choose 'Spock'
    allow(subject).to receive(:computer_choose) { :lizard }
    expect(subject.winner).to eq "Computer wins!"
  end

  it 'player1 chooses paper, computer lizard' do
    subject.player1_choose 'paper'
    allow(subject).to receive(:computer_choose) { :lizard }
    expect(subject.winner).to eq "Computer wins!"
  end

  it 'player1 chooses lizard, computer scissors' do
    subject.player1_choose 'lizard'
    allow(subject).to receive(:computer_choose) { :scissors }
    expect(subject.winner).to eq "Computer wins!"
  end

  it 'player1 chooses scissors, computer Spock' do
    subject.player1_choose 'scissors'
    allow(subject).to receive(:computer_choose) { :Spock }
    expect(subject.winner).to eq "Computer wins!"
  end

  it 'player1 chooses the same than computer' do
    subject.player1_choose 'scissors'
    allow(subject).to receive(:computer_choose) { :scissors }
    expect(subject.winner).to eq "Tie!"
  end
end

require 'game'
describe Game do
  it 'picks a random number between' do
    expect(subject.choose_move).to be_between(0, 2)
  end
  it 'translates a number to rock, paper or scissors' do
    expect(subject.translate_move(2)).to eq "Scissors"
  end
  it 'returns the computers move' do
    allow(subject).to receive(:computer_move).and_return('Scissors')
    expect(subject.computer_move).to eq 'Scissors'
  end
  it 'accepts a players move' do
    expect(subject.play('Rock')).to eq 'Rock'
  end
end

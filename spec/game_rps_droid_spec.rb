require 'rps_droid'
class GameRpsDroid
  include RpsDroid
end

describe GameRpsDroid do
  it 'picks a random number between' do
    expect(subject.choose_move).to be_between(0, 2)
  end
  it 'translates a number to rock, paper or scissors' do
    expect(subject.translate_move(2)).to eq "Scissors"
  end
  it 'returns the computers move' do
    allow(subject).to receive(:make_move).and_return('Scissors')
    expect(subject.make_move).to eq 'Scissors'
  end
end

require 'game'
describe Game do
  it 'picks a random number between' do
    expect(subject.choose_move).to be_between(0, 2)
  end
  it 'translates a number to rock, paper or scissors' do
    expect(subject.translate_move(2)).to eq "Scissors"
  end
end

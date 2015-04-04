require 'game'
describe Game do
  it 'picks a random number between' do
    expect(subject.choose_move).to be_between(1, 3)
  end
  it 'translates a number to rock, paper or scissors' do
    expect(subject.tranlates_move(3)).to eq "Scissors"
  end
end

describe Game do
  it 'picks a random number between' do
    expect(subject.choose_move).to be_between(1, 3)
  end
  xit 'translates a number to rock, paper or scissors'
end

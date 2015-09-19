require 'game'

describe Game do

  it 'can indentify the winner' do
    expect(subject.winner('scissors', 'paper')).to eq 'scissors'
  end

  it 'can indentify there is no winner' do
    expect(subject.winner('scissors', 'scissors')).to eq 'no winner'
  end

end
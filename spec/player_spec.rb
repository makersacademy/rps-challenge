require 'player'

describe Player do
  it 'can play a move of his own choice' do
    subject.play "scissors"
    expect(subject.moves).not_to eq nil
  end
end
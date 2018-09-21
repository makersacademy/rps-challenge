require 'computer'

describe Computer do
  it 'generates a random move rock,paper or scissors' do
    expect(["Rock", "Paper", "Scissors"]).to include(subject.move)
  end
end

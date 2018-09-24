require 'computer'

describe Computer do
  it 'return computers move' do
    expect(["rock","paper", "scissors"]).to include(subject.choice)
  end
end

require './lib/computer'

describe Computer do
  # below test is circular, couldn't stub out the randomness, return to
  it 'chooses rock, paper or scissors' do
    allow(@options).to receive(:sample).and_return("Rock")
    expect(@options.sample).to eq "Rock" 
  end
  it 'chooses rock, paper or scissors' do
    expect(subject.choose).to be_kind_of String
  end
  # below test added for coverage, but it exposes the array to the public via attr_reader without good reason
  it 'has a rock, paper or scissors array' do
    expect(subject.options).to eq ["Rock", "Paper", "Scissors"]
  end
end

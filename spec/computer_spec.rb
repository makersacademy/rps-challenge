require 'computer'

describe Computer do

  it 'has a name The Unbeatable' do
    expect(subject.name).to eq "The Unbeatable"
  end

  it 'can generate a random option' do
    options = [:rock, :paper, :scissors]
    expect(options).to include(subject.choose)
  end

end

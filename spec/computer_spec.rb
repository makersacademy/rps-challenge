require 'computer'

describe Computer do

  it 'can make a choice' do
    expect(subject.choice(['apple'])).to eq('apple')
  end

end
require 'computer'

describe Computer do

  it 'can make a choice' do
    options = ['rock', 'paper', 'scissors']
    expect(options).to include subject.make_choice(options)
  end

end